<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMoviesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('movies', function (Blueprint $table) {
            $table->id();
            $table->text('name',1000);
            $table->text('description',1000);

            $table->date('release');
            $table->date('date');
           
            $table->integer('rating')->unsigned()->default(1);
             $table->integer('ticket')->unsigned()->default(0);
            $table->integer('price')->unsigned()->default(0);

            $table->text('country', 1000);
             $table->text('photo', 1000);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('movies');
    }
}
