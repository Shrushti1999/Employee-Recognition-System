package com.example.sleepyhollow;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;

import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;

public class MainActivity6 extends AppCompatActivity {

    private EditText editTextDestinationSSN;
    private EditText editTextAmount;
    private String sourceSSN;
    private TextView textViewTransferStatus;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main6);

        ////////------ Initializing EditText components and TextView for status ---------\\\\\\\\
        editTextDestinationSSN = findViewById(R.id.editTextDestinationSSN);
        editTextAmount = findViewById(R.id.editTextAmount);
        textViewTransferStatus = findViewById(R.id.textViewTransferStatus);

        ////////------ Retrieving the source SSN passed from MainActivity2 ---------\\\\\\\\
        sourceSSN = getIntent().getStringExtra("sourceSSN");

        ////////------ Setting up the button listener ---------\\\\\\\\
        Button buttonInitiateTransfer = findViewById(R.id.buttonInitiateTransfer);
        buttonInitiateTransfer.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                performTransfer();
            }
        });
    }

    private void performTransfer() {
        String destinationSSN = editTextDestinationSSN.getText().toString();
        String amount = editTextAmount.getText().toString();

        ////////------ Constructing the URL for the Transfer.jsp ---------\\\\\\\\
        String transferUrl = "http://10.0.2.2:8080/sleepyhollow/Transfer.jsp?ssn1=" +
                sourceSSN + "&ssn2=" + destinationSSN + "&amount=" + amount;

        ////////------Making the request to Transfer.jsp ---------\\\\\\\\
        StringRequest stringRequest = new StringRequest(Request.Method.GET, transferUrl,
                new Response.Listener<String>() {
                    @Override
                    public void onResponse(String response) {
                        ////////------ Updating the UI with the response from the server ---------\\\\\\\\
                        textViewTransferStatus.setText(response.trim());  ////////------The "trim()" to remove any leading or trailing whitespace ---------\\\\\\\\
                    }
                },
                new Response.ErrorListener() {
                    @Override
                    public void onErrorResponse(VolleyError error) {
                        textViewTransferStatus.setText("Error occurred: " + error.getMessage());
                    }
                });

        ////////----- Adding the request to the RequestQueue ---------\\\\\\\\
        Volley.newRequestQueue(this).add(stringRequest);
    }
}
