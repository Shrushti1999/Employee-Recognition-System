package com.example.sleepyhollow;

import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Spinner;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;
import java.util.ArrayList;
import java.util.List;

public class MainActivity4 extends AppCompatActivity {

    private Spinner spinnerTransactionIds;
    private TextView textViewTransactionDetails;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main4);

        spinnerTransactionIds = findViewById(R.id.spinnerAwardIds);
        textViewTransactionDetails = findViewById(R.id.textViewTransactionDetails);

        ////////----- Getting the SSN passed from MainActivity2 ---------\\\\\\\\
        String ssn = getIntent().getStringExtra("empid");

        ////////----- Initializing the request queue ---------\\\\\\\\
        RequestQueue queue = Volley.newRequestQueue(this);

        ////////----- Requesting to get transaction IDs associated with the employee SSN ---------\\\\\\\\
        String transactionsUrl = "http://10.0.2.2:8080/sleepyhollow/Transactions.jsp?ssn=" + ssn;
        StringRequest transactionRequest = new StringRequest(Request.Method.GET, transactionsUrl,
                response -> {
                    ////////----- Processing the response to extract the transaction IDs ---------\\\\\\\\
                    List<String> transactionIds = extractTransactionIds(response);
                    ArrayAdapter<String> adapter = new ArrayAdapter<>(this,
                            android.R.layout.simple_spinner_item, transactionIds);
                    spinnerTransactionIds.setAdapter(adapter);
                },
                error -> {
                    ///////------ Handling the error ---------\\\\\\\\
                    textViewTransactionDetails.setText("Error retrieving transaction IDs: " + error.toString());
                });

        queue.add(transactionRequest);

        /////////------- Setting up the listener for the spinner ---------\\\\\\\\
        spinnerTransactionIds.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                String selectedTransactionId = (String) parent.getItemAtPosition(position);
                fetchTransactionDetails(selectedTransactionId);
            }

            @Override
            public void onNothingSelected(AdapterView<?> parent) {
                // Can be left empty
            }
        });
    }

    /////////------- Parsing the transaction IDs from previous response ---------\\\\\\\\
    private List<String> extractTransactionIds(String response) {
        String[] lines = response.split("\n");
        List<String> ids = new ArrayList<>();
        for (String line : lines) {
            if (!line.trim().isEmpty()) {
                String id = line.substring(line.indexOf("Transaction ID: ") + "Transaction ID: ".length(),
                        line.indexOf(", Date:"));
                ids.add(id.trim());
            }
        }
        return ids;
    }

    ////////------ Fetching transaction details and update the TextView ---------\\\\\\\\
    private void fetchTransactionDetails(String transactionId) {
        String url = "http://10.0.2.2:8080/sleepyhollow/TransactionDetails.jsp?txnid=" + transactionId;
        StringRequest request = new StringRequest(Request.Method.GET, url,
                response -> {
                    ////////------ Processing the response to display in TextView ---------\\\\\\\\
                    textViewTransactionDetails.setText(response.replace("<br/>", "\n"));
                },
                error -> {
                    ////////------ Handle error -----\\\\\\\\
                    textViewTransactionDetails.setText("Error retrieving transaction details: " + error.toString());
                });

        Volley.newRequestQueue(this).add(request);
    }
}
