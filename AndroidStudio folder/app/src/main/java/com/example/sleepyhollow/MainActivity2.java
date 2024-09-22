package com.example.sleepyhollow;

import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;

import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.ImageRequest;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;

public class MainActivity2 extends AppCompatActivity {

    private ImageView imageViewPhoto;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main2);

        ////------ Initializing the ImageView and TextView ---------\\\\
        imageViewPhoto = findViewById(R.id.imageViewPhoto);
        TextView textViewWelcome = findViewById(R.id.textViewName);

        //////------ Getting the SSN from the intent ---------\\\\
        String ssn = getIntent().getStringExtra("empid");
        String infoUrl = "http://10.0.2.2:8080/sleepyhollow/Info.jsp?ssn=" + ssn;

//////------  Sending the request to Info.jsp ---------\\\\
        StringRequest infoRequest = new StringRequest(Request.Method.GET, infoUrl,
                new Response.Listener<String>() {
                    @Override
                    public void onResponse(String response) {
                        ////////------ Response format is "Name: [name], Total Sales: [sales]" as we saw in the browser  ---------\\\\
                        String[] parts = response.split(", ");
                        if (parts.length == 2) {
                            String namePart = parts[0];
                            String salesPart = parts[1];

                            String name = namePart.substring(namePart.indexOf(':') + 2); ////////------ Get substring after "Name: " ---------\\\\
                            String totalSales = salesPart.substring(salesPart.indexOf(':') + 2).replace("<br/>", ""); ////////------ Removing the <br/> tag from the string ---------\\\\


                            TextView nameTextView = findViewById(R.id.textViewName);
                            TextView salesTextView = findViewById(R.id.textViewTotalSales);

                            nameTextView.setText(name);
                            salesTextView.setText(totalSales);
                        }
                    }
                },
                new Response.ErrorListener() {
                    @Override
                    public void onErrorResponse(VolleyError error) {
                        // Handle error
                    }
                });

//////------ Adding the request to the RequestQueue.---------\\\\
        Volley.newRequestQueue(this).add(infoRequest);



        //////------ Setting up the photo URL ---------\\\\
        String photoUrl = "http://10.0.2.2:8080/sleepyhollow/images/" + ssn + ".jpeg";

        //////------ Creating a new request queue ---------\\\\
        RequestQueue requestQueue = Volley.newRequestQueue(this);

        //////------ Creating a new image request ---------\\\\
        ImageRequest imageRequest = new ImageRequest(photoUrl,
                new Response.Listener<Bitmap>() {
                    @Override
                    public void onResponse(Bitmap bitmap) {
                        imageViewPhoto.setImageBitmap(bitmap);
                    }
                },
                0, //////------ maxWidth, 0 for no decoding ---------\\\\
                0, //////------ maxHeight, 0 for no scaling ---------\\\\
                Bitmap.Config.RGB_565, //////------ Image decode configuration ---------\\\\
                new Response.ErrorListener() { // Error listener
                    @Override
                    public void onErrorResponse(VolleyError error) {
                        imageViewPhoto.setImageResource(R.drawable.image_error);
                    }
                }
        );


        //////------ Adding the request to the queue ---------\\\\
        requestQueue.add(imageRequest);



////////------ Transaction Button ---------\\\\\\\\
        Button transactionsButton = findViewById(R.id.buttonTransactions);
        transactionsButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                //////////------- Instantiating the RequestQueue ---------\\\\\\\\
                RequestQueue queue = Volley.newRequestQueue(MainActivity2.this);
                String employeeSSN = ssn;

                //////////------ The URL for the Transactions.jsp that Shrusti show us in the browser ---------\\\\\\\\
                String url = "http://10.0.2.2:8080/sleepyhollow/Transactions.jsp?ssn=" + employeeSSN;

                ////////////------ Requesting a string response from the provided URL \\\\\\\\
                StringRequest stringRequest = new StringRequest(Request.Method.GET, url,
                        new Response.Listener<String>() {
                            @Override
                            public void onResponse(String response) {
                                //////////////------ Sending the Intent to start MainActivity3 -----\\\\\\\\
                                Intent intent = new Intent(MainActivity2.this, MainActivity3.class);
                                intent.putExtra("transactionData", response); ////////////------ Passing the transaction data -----\\\\\\\\
                                startActivity(intent);
                            }
                        }, new Response.ErrorListener() {
                    @Override
                    public void onErrorResponse(VolleyError error) {
                        ////////////------ Handling the error -----\\\\\\\\
                        Toast.makeText(MainActivity2.this, "That didn't work!", Toast.LENGTH_SHORT).show();
                    }
                });

                ////////////------ Add the request to the RequestQueue -----\\\\\\\\
                queue.add(stringRequest);
            }
        });



////////------ Transaction Details Button ---------\\\\\\\\
        Button btnTransactions = findViewById(R.id.button2);
        btnTransactions.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                ////////------ Starting MainActivity4 and pass the SSN ---------\\\\\\\\
                Intent intent = new Intent(MainActivity2.this, MainActivity4.class);
                intent.putExtra("empid", ssn); //////////------ passing the employee SSN ---------\\\\\\\\
                startActivity(intent);
            }
        });

////////------ Award Details Button ---------\\\\\\\\
        Button btnAwardDetails = findViewById(R.id.buttonAwardDetails);
        btnAwardDetails.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                ///////------ Starting the  MainActivity5 and passing the  the SSN ------\\\\\
                Intent intent = new Intent(MainActivity2.this, MainActivity5.class);
                intent.putExtra("empid", ssn); ////////------  Pass the employee SSN ---------\\\\\\\\
                startActivity(intent);
            }
        });

////////------ Transfer Button ---------\\\\\\\\
        Button buttonTransfer = findViewById(R.id.buttonTransfer1);
        buttonTransfer.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                ////////------ Extracting the source SSN from the previous Intent or from where it is stored ---------\\\\\\\\
                String sourceSSN = getIntent().getStringExtra("empid");

                ////////------ Create the Intent to start MainActivity6 ---------\\\\\\\\
                Intent intent = new Intent(MainActivity2.this, MainActivity6.class);
                ////////------ Passing the source SSN to MainActivity6 ---------\\\\\\\\
                intent.putExtra("sourceSSN", sourceSSN);
                startActivity(intent);
            }
        });

////////------ Exit Button ---------\\\\\\\\
        Button btnExit = findViewById(R.id.buttonExit);
        btnExit.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                ////////------ Close all activities and exit the app -------\\\\\\\
                finishAffinity();
            }
        });



    }


}
