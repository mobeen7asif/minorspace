<?php

namespace Database\Seeders;

use Botble\Base\Supports\BaseSeeder;
use Botble\Ecommerce\Models\Address;
use Botble\Ecommerce\Models\Customer;
use Carbon\Carbon;
use Illuminate\Support\Facades\Hash;

class CustomerSeeder extends BaseSeeder
{
    public function run(): void
    {
        $this->uploadFiles('customers');

        Customer::query()->truncate();
        Address::query()->truncate();

        $customers = [
            'customer@botble.com',
            'john.smith@botble.com',
        ];

        foreach ($customers as $item) {
            $customer = Customer::query()->create([
                'name' => 'John Smith',
                'email' => $item,
                'password' => Hash::make('12345678'),
                'phone' => '1234567890',
                'avatar' => 'customers/' . rand(1, 10) . '.jpg',
                'dob' => Carbon::now()->subYears(rand(20, 50))->subDays(rand(1, 30)),
            ]);

            $customer->confirmed_at = Carbon::now();
            $customer->save();

            Address::query()->create([
                'name' => $customer->name,
                'phone' => '1234567890',
                'email' => $customer->email,
                'country' => 'US',
                'state' => 'New York',
                'city' => 'New York',
                'address' => '123 Main St',
                'zip_code' => '10001',
                'customer_id' => $customer->id,
                'is_default' => true,
            ]);

            Address::query()->create([
                'name' => $customer->name,
                'phone' => '1234567890',
                'email' => $customer->email,
                'country' => 'US',
                'state' => 'New York',
                'city' => 'New York',
                'address' => '456 Elm St',
                'zip_code' => '10001',
                'customer_id' => $customer->id,
                'is_default' => false,
            ]);
        }

        for ($i = 0; $i < 8; $i++) {
            $customer = Customer::query()->create([
                'name' => 'Customer ' . ($i + 1),
                'email' => 'customer' . ($i + 1) . '@botble.com',
                'password' => Hash::make('12345678'),
                'phone' => '1234567890',
                'avatar' => 'customers/' . ($i + 1) . '.jpg',
                'dob' => Carbon::now()->subYears(rand(20, 50))->subDays(rand(1, 30)),
            ]);

            $customer->confirmed_at = Carbon::now();
            $customer->save();

            Address::query()->create([
                'name' => $customer->name,
                'phone' => '1234567890',
                'email' => $customer->email,
                'country' => 'US',
                'state' => 'New York',
                'city' => 'New York',
                'address' => '789 Oak St',
                'zip_code' => '10001',
                'customer_id' => $customer->id,
                'is_default' => true,
            ]);
        }
    }
}
