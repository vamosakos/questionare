<?php

namespace App\Http\Controllers;

use App\Models\Questionnaire;

class QuestionController extends Controller
{
    public function create(Questionnaire $questionnaire)
    {
        return view('question.create', compact('questionnaire'));
    }
}
