package com.example.sleepyhollow;

import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;

import androidx.activity.EdgeToEdge;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.graphics.Insets;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;

import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;

import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class MainActivity5 extends AppCompatActivity {

    private Spinner spinnerAwardIds;
    private TextView textViewAwardDetails;
    private RequestQueue queue;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main5);

        spinnerAwardIds = findViewById(R.id.spinnerAwardIds);
        textViewAwardDetails = findViewById(R.id.textViewAwardDetails);

        //////----- Getting the SSN from the intent -----\\\\\\\\
        String ssn = getIntent().getStringExtra("empid");
        String awardIdsUrl = "http://10.0.2.2:8080/sleepyhollow/AwardIds.jsp?ssn=" + ssn;

        //////----- Requesting for award IDs -----\\\\\\\\
        StringRequest awardIdsRequest = new StringRequest(Request.Method.GET, awardIdsUrl,
                response -> {
                    /////////------ Splitting by line break to get each award ID -----\\\\\\\\
                    String[] rawAwardIds = response.split("<br/>");
                    ArrayList<String> awardIds = new ArrayList<>();
                    for(String rawId : rawAwardIds) {
                        /////////------ Using the regular expression to find numeric part of the ID -----\\\\\\\\
                        Matcher matcher = Pattern.compile("\\d+").matcher(rawId);
                        if (matcher.find()) {
                            /////////------ Adding only the numeric part to the list -----\\\\\\\\
                            awardIds.add(matcher.group());
                        }
                    }
                    ///////------ Now, awardIds ArrayList contains only numeric IDs -----\\\\\\\\
                    ArrayAdapter<String> adapter = new ArrayAdapter<>(this,
                            android.R.layout.simple_spinner_dropdown_item, awardIds);
                    spinnerAwardIds.setAdapter(adapter);
                },
                error -> {
                    /////////------ Handling error -----\\\\\\\\
                    Toast.makeText(MainActivity5.this, "Error fetching award IDs", Toast.LENGTH_SHORT).show();
                });


        //////----- Queuing the request-----\\\\\\\\
        queue = Volley.newRequestQueue(this);
        queue.add(awardIdsRequest);

        ///////----- Setting an item selected listener on the spinner -------\\\\\\\
        spinnerAwardIds.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                String selectedAwardId = (String) parent.getItemAtPosition(position);
                ////////----- Fetching the and display the award details -----\\\\\\\
                fetchAwardDetails(selectedAwardId, ssn);
            }

            @Override
            public void onNothingSelected(AdapterView<?> parent) {
                textViewAwardDetails.setText("");
            }
        });
    }

    private void fetchAwardDetails(String awardId, String ssn) {
        String awardDetailsUrl = "http://10.0.2.2:8080/sleepyhollow/GrantedDetails.jsp?awardid=" + awardId + "&ssn=" + ssn;

        /////////------ Request for award details -----\\\\\\\\
        StringRequest awardDetailsRequest = new StringRequest(Request.Method.GET, awardDetailsUrl,
                response -> {
                    ///////---- Display details in TextView -----\\\\\\\\
                    textViewAwardDetails.setText(response.replaceAll("<br/>", "\n"));
                },
                error -> {
                    ///////----- Handling the error -------\\\\\\
                    Toast.makeText(MainActivity5.this, "Error fetching award details", Toast.LENGTH_SHORT).show();
                });

        queue.add(awardDetailsRequest);
    }
}
