<?php


use Illuminate\Database\Seeder;
use App\Supervisor;

class SupervisorSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // Define the data you want to insert
        $supervisors = [
            ['name' => 'John Doe', 'professionality' => 'Engineer', 'phone' => '1234567890', 'email' => 'john@example.com'],
            ['name' => 'Jane Smith', 'professionality' => 'Doctor', 'phone' => '2345678901', 'email' => 'jane@example.com'],
            ['name' => 'Alice Johnson', 'professionality' => 'Teacher', 'phone' => '3456789012', 'email' => 'alice@example.com'],
            ['name' => 'Bob Brown', 'professionality' => 'Lawyer', 'phone' => '4567890123', 'email' => 'bob@example.com'],
            ['name' => 'Charlie Davis', 'professionality' => 'Architect', 'phone' => '5678901234', 'email' => 'charlie@example.com'],
            ['name' => 'David Evans', 'professionality' => 'Accountant', 'phone' => '6789012345', 'email' => 'david@example.com'],
            ['name' => 'Eva Green', 'professionality' => 'Consultant', 'phone' => '7890123456', 'email' => 'eva@example.com'],
            ['name' => 'Frank Harris', 'professionality' => 'Manager', 'phone' => '8901234567', 'email' => 'frank@example.com'],
            ['name' => 'Grace Lee', 'professionality' => 'Designer', 'phone' => '9012345678', 'email' => 'grace@example.com'],
            ['name' => 'Hank White', 'professionality' => 'Analyst', 'phone' => '0123456789', 'email' => 'hank@example.com'],
        ];

        // Insert the data into the supervisors table
        foreach ($supervisors as $supervisor) {
            Supervisor::create($supervisor);
        }
    }
}