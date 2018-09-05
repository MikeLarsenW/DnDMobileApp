#include <iostream>
#include <cassert> // Provides assert function
#include "sequence1.h" // With value_type defined as double
using namespace std;

namespace main_savitch_3
{

	// MOD MEMBER FUNCTIONS
	// constructor for sequence
	sequence::sequence()
	{
		
		used = 0;
	}

	//sets the index at 0
	void sequence::start()
	{
		if (size() > 0) {
			current_index = 0;
		}
	}

	//increases the index by one if it passes assert
	void sequence::advance()
	{
		assert(is_item());

		current_index++;
	}

	//inserts an entry for the array before the current value
	void sequence::insert(const value_type& entry)
	{
		assert( size() < CAPACITY);

		if(!is_item()) current_index = 0;
		//moves all the data in the array 

		for(size_type i = used; i>current_index; --i) 
			data[i] = data[i-1];

		//sets the current index to the given entry
		data[current_index] = entry;
		//increments the counter used by one
		++used;
	}

	//attaches a value after current
	void sequence::attach(const value_type& entry)
	{
		assert(size() < CAPACITY);
		//modifys index to correct value if it is null
		if (!is_item()) current_index = used - 1;
		//increases the index to add entry
		++current_index;

		//moves the data 
		for (size_type i = used; i > current_index; --i) {
			data[i] = data[i - 1];
		}

		data[current_index] = entry;
		//increments the counter used by one
		++used;
	}

	//removes the current value
	void sequence::remove_current()
	{
		size_type i;

		assert(is_item() == true);

		for (i = current_index; i< used - 1; ++i)
		{
			data[i] = data[i + 1];

		}
		//decreases counter variable after removal
		--used;
	}

	//returns the counter variable used to give the value of the size
	sequence::size_type sequence::size() const
	{
		return used;
	}

	//returns true if both the current index is greater than 0 and used
	//our counter is greater than the index
	bool sequence::is_item() const
	{
		return (current_index >=0&& current_index < used);
	}

	//returns the current value
	sequence::value_type sequence::current() const
	{
		if (is_item()){
	 
			return data[current_index];
		}
		
	}
}