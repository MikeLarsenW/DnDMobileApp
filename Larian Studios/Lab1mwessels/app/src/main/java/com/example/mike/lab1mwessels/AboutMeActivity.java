/**
 * Michael Wessels
 * Mobile Software Development
 * Prof. Selena He
 * Lab 1
 */

package com.example.mike.lab1mwessels;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

public class AboutMeActivity extends AppCompatActivity {

    Button buttonForMessage;
    TextView buttonClickText;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_about_me);


        buttonForMessage = (Button)findViewById(R.id.buttonForMessage);
        buttonClickText = (TextView)findViewById(R.id.buttonClickText);
    }

    public void onclick(View view)
    {
        buttonClickText.setText("I Love Computer Science!");

    }
}
