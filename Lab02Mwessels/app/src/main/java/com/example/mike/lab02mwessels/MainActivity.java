/*
 * Student: Michael Wessels
 * Instructor: Selena He
 * CS4322
 * Lab 02
 */
package com.example.mike.lab02mwessels;

import android.support.annotation.IdRes;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {

    RadioGroup pizzaCrustRadio;
    RadioGroup pizzaDeliveryMethod;
    SeekBar pizzaSizeSeekBar;
    CheckBox toppingsCheckBox1, toppingsCheckBox2, toppingsCheckBox3;
    TextView pizzaSizeView;

    public int getPizzaSize(int barPosition) {
        if (barPosition == 0) {
            pizzaSizeView.setText(R.string.radius_five);
            return 5;
        }
        if (barPosition == 1) {
            pizzaSizeView.setText(R.string.radius_six);
            return 6;
        }
        if (barPosition == 2) {
            pizzaSizeView.setText(R.string.radius_seven);
            return 7;
        }
        if (barPosition == 3) {
            pizzaSizeView.setText(R.string.radius_eight);
            return 8;
        }
        if (barPosition == 4) {
            pizzaSizeView.setText(R.string.radius_nine);
            return 9;
        }
        else {
            pizzaSizeView.setText(R.string.radius_ten);
            return 6;
        }
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        pizzaCrustRadio = (RadioGroup)findViewById(R.id.crustRadioGrp);

        pizzaDeliveryMethod = (RadioGroup)findViewById(R.id.pizzaDeliveryMethod);

        toppingsCheckBox1 = (CheckBox)findViewById(R.id.toppings1);
        toppingsCheckBox2 = (CheckBox)findViewById(R.id.toppings2);
        toppingsCheckBox3 = (CheckBox)findViewById(R.id.toppings3);

        pizzaSizeView =(TextView)findViewById(R.id.pizzaSize);
        pizzaSizeSeekBar = (SeekBar)findViewById(R.id.seekBar);

        toppingsCheckBox1.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                if(buttonView == toppingsCheckBox1 && isChecked)
                    Toast.makeText(getApplicationContext(), toppingsCheckBox1.getText(),Toast.LENGTH_SHORT).show();
            }
        });

        toppingsCheckBox2.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                if(buttonView == toppingsCheckBox2 && isChecked)
                    Toast.makeText(getApplicationContext(), toppingsCheckBox2.getText(),Toast.LENGTH_SHORT).show();
            }
        });

        toppingsCheckBox3.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                if(buttonView == toppingsCheckBox3 && isChecked)
                    Toast.makeText(getApplicationContext(), toppingsCheckBox3.getText(),Toast.LENGTH_SHORT).show();
            }
        });

        pizzaCrustRadio.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(RadioGroup group, @IdRes int checkedId) {
                int currentId = pizzaCrustRadio.getCheckedRadioButtonId();
                RadioButton currentRB = (RadioButton)findViewById(currentId);
                Toast.makeText(getApplicationContext(), currentRB.getText(),Toast.LENGTH_SHORT).show();
            }
        });

        pizzaDeliveryMethod.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(RadioGroup group, @IdRes int checkedId) {
                int currentId = pizzaDeliveryMethod.getCheckedRadioButtonId();
                RadioButton currentRB = (RadioButton)findViewById(currentId);
                Toast.makeText(getApplicationContext(), currentRB.getText(),Toast.LENGTH_SHORT).show();
            }
        });

        pizzaSizeSeekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
            @Override
            public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
                Toast.makeText(getApplicationContext(),"Pizza Radius is " + getPizzaSize(pizzaSizeSeekBar.getProgress()) +  " Inches",Toast.LENGTH_SHORT).show();
            }

            @Override
            public void onStartTrackingTouch(SeekBar seekBar) {

            }

            @Override
            public void onStopTrackingTouch(SeekBar seekBar) {

            }
        });
    }
}

