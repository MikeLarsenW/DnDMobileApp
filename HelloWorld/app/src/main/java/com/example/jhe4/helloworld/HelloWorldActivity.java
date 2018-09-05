package com.example.jhe4.helloworld;

import android.icu.text.DateFormat;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

import java.util.Date;

public class HelloWorldActivity extends AppCompatActivity {

    EditText myEditText1;
    TextView myTextView1;
    Button myButton1;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_hello_world);

        myEditText1 = (EditText)findViewById(R.id.myEditText1);
        myTextView1 = (TextView)findViewById(R.id.myTextView1);
        myButton1 = (Button)findViewById(R.id.myButton1);
    }


    public void onclick(View view)
    {
        if(myEditText1.getText().toString()==""){
            myTextView1.setText("Hello! Default user!");
        }
        else
        {
            myTextView1.setText("Hello! " + myEditText1.getText().toString());
        }
    }

}
