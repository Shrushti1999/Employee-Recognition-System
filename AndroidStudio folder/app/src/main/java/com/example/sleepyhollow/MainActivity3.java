package com.example.sleepyhollow;

import android.os.Bundle;
import android.widget.TextView;

import androidx.activity.EdgeToEdge;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.graphics.Insets;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;

public class MainActivity3 extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main3);

        TextView transactionDetailsTextView = findViewById(R.id.transactionTextView);

        ////////----- Getting the transaction details passed from MainActivity2 -----\\\\\\\\
        String transactionDetails = getIntent().getStringExtra("transactionData");
        if (transactionDetails != null) {
            String formattedDetails = transactionDetails.replace("<br/>", "\n");
            transactionDetailsTextView.setText(formattedDetails);
        }
    }

    }
