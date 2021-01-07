<?php

use Twig\Environment;
use Twig\Error\LoaderError;
use Twig\Error\RuntimeError;
use Twig\Extension\SandboxExtension;
use Twig\Markup;
use Twig\Sandbox\SecurityError;
use Twig\Sandbox\SecurityNotAllowedTagError;
use Twig\Sandbox\SecurityNotAllowedFilterError;
use Twig\Sandbox\SecurityNotAllowedFunctionError;
use Twig\Source;
use Twig\Template;

/* /Applications/MAMP/htdocs/wellwell/themes/spotlayer/pages/dashboard/settings.htm */
class __TwigTemplate_12d11ee1498997bdd8bdd48441e08b6fe9871f780275667ac3dae0927b6f27fd extends \Twig\Template
{
    private $source;
    private $macros = [];

    public function __construct(Environment $env)
    {
        parent::__construct($env);

        $this->source = $this->getSourceContext();

        $this->parent = false;

        $this->blocks = [
        ];
    }

    protected function doDisplay(array $context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 1
        echo "<div class=\"kt-grid kt-grid--desktop kt-grid--ver kt-grid--ver-desktop kt-app\">

    <!--Begin:: App Aside Mobile Toggle-->
    <button class=\"kt-app__aside-close\" id=\"kt_user_profile_aside_close\">
        <i class=\"la la-close\"></i>
    </button>
    <!--End:: App Aside Mobile Toggle-->

    <!-- begin:: Aside -->
    ";
        // line 10
        $context['__cms_partial_params'] = [];
        echo $this->env->getExtension('Cms\Twig\Extension')->partialFunction("settingsmenu"        , $context['__cms_partial_params']        , true        );
        unset($context['__cms_partial_params']);
        // line 11
        echo "    <!-- end:: Aside -->
    <!--End::Aside-->

    <!--Begin:: Inbox List-->
    <div class=\"kt-grid__item kt-grid__item--fluid    kt-portlet    kt-inbox__list kt-inbox__list--shown\" id=\"kt_inbox_list\">
        <div class=\"kt-portlet__head\">
    \t\t<div class=\"kt-portlet__head-label\">
    \t\t\t<h3 class=\"kt-portlet__head-title\">
    \t\t\t\t";
        // line 19
        echo call_user_func_array($this->env->getFilter('__')->getCallable(), [twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "page", [], "any", false, false, false, 19), "title", [], "any", false, false, false, 19)]);
        echo "
    \t\t\t</h3>
    \t\t</div>
        </div>
        <div class=\"kt-portlet__body kt-portlet__body--fit-x\">
           \t<div class=\"col-lg-12\">
                ";
        // line 25
        echo call_user_func_array($this->env->getFunction('form_ajax')->getCallable(), ["ajax", "onSave", ["id" => "kt_form", "class" => "kt-form"]]);
        echo "
    \t\t\t\t<div class=\"row\">
    \t\t\t\t\t<div class=\"col-xl-12\">
\t\t\t\t\t\t\t<div class=\"form-group kt-hidden\" id=\"kt-form_msg\">
                                <div class=\"alert alert-danger\" role=\"alert\">
\t\t\t\t\t\t\t\t\t";
        // line 30
        echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Oh snap! Change a few things up and try submitting again."]);
        echo "
\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t</div>
                        </div>
                    </div>
                    ";
        // line 35
        if (((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "param", [], "any", false, false, false, 35), "page", [], "any", false, false, false, 35) == "general") || twig_test_empty(twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "param", [], "any", false, false, false, 35), "page", [], "any", false, false, false, 35)))) {
            // line 36
            echo "        \t\t\t\t<div class=\"row\">
        \t\t\t\t\t<div class=\"col-xl-2\"></div>
        \t\t\t\t\t<div class=\"col-xl-8\">
        \t\t\t\t\t\t<div class=\"kt-section kt-section--first\">
                                    <h3 class=\"kt-section__title kt-section__title-lg\">";
            // line 40
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["General"]);
            echo ":</h3>
        \t\t\t\t\t\t\t<div class=\"kt-section__body\">
        \t\t\t\t\t\t\t\t<div class=\"form-group row\">
        \t\t\t\t\t\t\t\t\t<label class=\"col-xl-3 col-lg-3 col-form-label\">";
            // line 43
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Default Language"]);
            echo "</label>
        \t\t\t\t\t\t\t\t\t<div class=\"col-lg-9 col-xl-6\">
        \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"language\" required>
                                                    <option data-hidden=\"true\"></option>
                                                    ";
            // line 47
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["locales"] ?? null));
            foreach ($context['_seq'] as $context["code"] => $context["name"]) {
                // line 48
                echo "        \t\t\t\t\t\t\t\t\t\t\t\t<option value=\"";
                echo twig_escape_filter($this->env, $context["code"], "html", null, true);
                echo "\" ";
                if ((($context["language"] ?? null) == $context["code"])) {
                    echo "selected";
                }
                echo " data-live-search=\"true\">";
                echo twig_escape_filter($this->env, $context["name"], "html", null, true);
                echo "</option>
                                                    ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['code'], $context['name'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 50
            echo "                                                </select>
        \t\t\t\t\t\t\t\t\t</div>
        \t\t\t\t\t\t\t\t</div>
        \t\t\t\t\t\t\t\t<div class=\"form-group row\">
        \t\t\t\t\t\t\t\t\t<label class=\"col-xl-3 col-lg-3 col-form-label\">";
            // line 54
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["TimeZone"]);
            echo "</label>
        \t\t\t\t\t\t\t\t\t<div class=\"col-lg-9 col-xl-6\">
        \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"timezone_offset\" data-live-search=\"true\" required>
                                                    <option data-hidden=\"true\"></option>
                                                \t<option value=\"-12:00\" ";
            // line 58
            if ((($context["timezone_offset"] ?? null) == "-12:00")) {
                echo "selected";
            }
            echo ">(GMT -12:00) ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Eniwetok, Kwajalein"]);
            echo "</option>
                                                \t<option value=\"-11:00\" ";
            // line 59
            if ((($context["timezone_offset"] ?? null) == "-11:00")) {
                echo "selected";
            }
            echo ">(GMT -11:00) ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Midway Island, Samoa"]);
            echo "</option>
                                                \t<option value=\"-10:00\" ";
            // line 60
            if ((($context["timezone_offset"] ?? null) == "-10:00")) {
                echo "selected";
            }
            echo ">(GMT -10:00) ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Hawaii"]);
            echo "</option>
                                                \t<option value=\"-09:50\" ";
            // line 61
            if ((($context["timezone_offset"] ?? null) == "-09:50")) {
                echo "selected";
            }
            echo ">(GMT -9:30) ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Taiohae"]);
            echo "</option>
                                                \t<option value=\"-09:00\" ";
            // line 62
            if ((($context["timezone_offset"] ?? null) == "-09:00")) {
                echo "selected";
            }
            echo ">(GMT -9:00) ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Alaska"]);
            echo "</option>
                                                \t<option value=\"-08:00\" ";
            // line 63
            if ((($context["timezone_offset"] ?? null) == "-08:00")) {
                echo "selected";
            }
            echo ">(GMT -8:00) ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Pacific Time (US &amp; Canada)"]);
            echo "</option>
                                                \t<option value=\"-07:00\" ";
            // line 64
            if ((($context["timezone_offset"] ?? null) == "-07:00")) {
                echo "selected";
            }
            echo ">(GMT -7:00) ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Mountain Time (US &amp; Canada)"]);
            echo "</option>
                                                \t<option value=\"-06:00\" ";
            // line 65
            if ((($context["timezone_offset"] ?? null) == "-06:00")) {
                echo "selected";
            }
            echo ">(GMT -6:00) ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Central Time (US &amp; Canada), Mexico City"]);
            echo "</option>
                                                \t<option value=\"-05:00\" ";
            // line 66
            if ((($context["timezone_offset"] ?? null) == "-05:00")) {
                echo "selected";
            }
            echo ">(GMT -5:00) ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Eastern Time (US &amp; Canada), Bogota, Lima"]);
            echo "</option>
                                                \t<option value=\"-04:50\" ";
            // line 67
            if ((($context["timezone_offset"] ?? null) == "-04:50")) {
                echo "selected";
            }
            echo ">(GMT -4:30) ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Caracas"]);
            echo "</option>
                                                \t<option value=\"-04:00\" ";
            // line 68
            if ((($context["timezone_offset"] ?? null) == "-04:00")) {
                echo "selected";
            }
            echo ">(GMT -4:00) ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Atlantic Time (Canada), Caracas, La Paz"]);
            echo "</option>
                                                \t<option value=\"-03:50\" ";
            // line 69
            if ((($context["timezone_offset"] ?? null) == "-03:50")) {
                echo "selected";
            }
            echo ">(GMT -3:30) ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Newfoundland"]);
            echo "</option>
                                                \t<option value=\"-03:00\" ";
            // line 70
            if ((($context["timezone_offset"] ?? null) == "-03:00")) {
                echo "selected";
            }
            echo ">(GMT -3:00) ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Brazil, Buenos Aires, Georgetown"]);
            echo "</option>
                                                \t<option value=\"-02:00\" ";
            // line 71
            if ((($context["timezone_offset"] ?? null) == "-02:00")) {
                echo "selected";
            }
            echo ">(GMT -2:00) ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Mid-Atlantic"]);
            echo "</option>
                                                \t<option value=\"-01:00\" ";
            // line 72
            if ((($context["timezone_offset"] ?? null) == "-01:00")) {
                echo "selected";
            }
            echo ">(GMT -1:00) ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Azores, Cape Verde Islands"]);
            echo "</option>
                                                \t<option value=\"+00:00\" ";
            // line 73
            if ((($context["timezone_offset"] ?? null) == "+00:00")) {
                echo "selected";
            }
            echo ">(GMT) Western Europe Time, London, Lisbon, Casablanca</option>
                                                \t<option value=\"+01:00\" ";
            // line 74
            if ((($context["timezone_offset"] ?? null) == "+01:00")) {
                echo "selected";
            }
            echo ">(GMT +1:00) ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Brussels, Copenhagen, Madrid, Paris"]);
            echo "</option>
                                                \t<option value=\"+02:00\" ";
            // line 75
            if ((($context["timezone_offset"] ?? null) == "+02:00")) {
                echo "selected";
            }
            echo ">(GMT +2:00) ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Cairo, Kaliningrad, South Africa"]);
            echo "</option>
                                                \t<option value=\"+03:00\" ";
            // line 76
            if ((($context["timezone_offset"] ?? null) == "+03:00")) {
                echo "selected";
            }
            echo ">(GMT +3:00) ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Baghdad, Riyadh, Moscow, St. Petersburg"]);
            echo "</option>
                                                \t<option value=\"+03:50\" ";
            // line 77
            if ((($context["timezone_offset"] ?? null) == "+03:50")) {
                echo "selected";
            }
            echo ">(GMT +3:30) ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Tehran"]);
            echo "</option>
                                                \t<option value=\"+04:00\" ";
            // line 78
            if ((($context["timezone_offset"] ?? null) == "+04:00")) {
                echo "selected";
            }
            echo ">(GMT +4:00) ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Abu Dhabi, Muscat, Baku, Tbilisi"]);
            echo "</option>
                                                \t<option value=\"+04:50\" ";
            // line 79
            if ((($context["timezone_offset"] ?? null) == "+04:50")) {
                echo "selected";
            }
            echo ">(GMT +4:30) ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Kabul"]);
            echo "</option>
                                                \t<option value=\"+05:00\" ";
            // line 80
            if ((($context["timezone_offset"] ?? null) == "+05:00")) {
                echo "selected";
            }
            echo ">(GMT +5:00) ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Ekaterinburg, Islamabad, Karachi, Tashkent"]);
            echo "</option>
                                                \t<option value=\"+05:50\" ";
            // line 81
            if ((($context["timezone_offset"] ?? null) == "+05:50")) {
                echo "selected";
            }
            echo ">(GMT +5:30) ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Bombay, Calcutta, Madras, New Delhi"]);
            echo "</option>
                                                \t<option value=\"+05:75\" ";
            // line 82
            if ((($context["timezone_offset"] ?? null) == "+05:75")) {
                echo "selected";
            }
            echo ">(GMT +5:45) ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Kathmandu, Pokhara"]);
            echo "</option>
                                                \t<option value=\"+06:00\" ";
            // line 83
            if ((($context["timezone_offset"] ?? null) == "+06:00")) {
                echo "selected";
            }
            echo ">(GMT +6:00) ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Almaty, Dhaka, Colombo"]);
            echo "</option>
                                                \t<option value=\"+06:50\" ";
            // line 84
            if ((($context["timezone_offset"] ?? null) == "+06:50")) {
                echo "selected";
            }
            echo ">(GMT +6:30) ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Yangon, Mandalay"]);
            echo "</option>
                                                \t<option value=\"+07:00\" ";
            // line 85
            if ((($context["timezone_offset"] ?? null) == "+07:00")) {
                echo "selected";
            }
            echo ">(GMT +7:00) ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Bangkok, Hanoi, Jakarta"]);
            echo "</option>
                                                \t<option value=\"+08:00\" ";
            // line 86
            if ((($context["timezone_offset"] ?? null) == "+08:00")) {
                echo "selected";
            }
            echo ">(GMT +8:00) ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Beijing, Perth, Singapore, Hong Kong"]);
            echo "</option>
                                                \t<option value=\"+08:75\" ";
            // line 87
            if ((($context["timezone_offset"] ?? null) == "+08:75")) {
                echo "selected";
            }
            echo ">(GMT +8:45) ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Eucla"]);
            echo "</option>
                                                \t<option value=\"+09:00\" ";
            // line 88
            if ((($context["timezone_offset"] ?? null) == "+09:00")) {
                echo "selected";
            }
            echo ">(GMT +9:00) ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Tokyo, Seoul, Osaka, Sapporo, Yakutsk"]);
            echo "</option>
                                                \t<option value=\"+09:50\" ";
            // line 89
            if ((($context["timezone_offset"] ?? null) == "+09:50")) {
                echo "selected";
            }
            echo ">(GMT +9:30) ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Adelaide, Darwin"]);
            echo "</option>
                                                \t<option value=\"+10:00\" ";
            // line 90
            if ((($context["timezone_offset"] ?? null) == "+10:00")) {
                echo "selected";
            }
            echo ">(GMT +10:00) ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Eastern Australia, Guam, Vladivostok"]);
            echo "</option>
                                                \t<option value=\"+10:50\" ";
            // line 91
            if ((($context["timezone_offset"] ?? null) == "+10:50")) {
                echo "selected";
            }
            echo ">(GMT +10:30) ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Lord Howe Island"]);
            echo "</option>
                                                \t<option value=\"+11:00\" ";
            // line 92
            if ((($context["timezone_offset"] ?? null) == "+11:00")) {
                echo "selected";
            }
            echo ">(GMT +11:00) ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Magadan, Solomon Islands, New Caledonia"]);
            echo "</option>
                                                \t<option value=\"+11:50\" ";
            // line 93
            if ((($context["timezone_offset"] ?? null) == "+11:50")) {
                echo "selected";
            }
            echo ">(GMT +11:30) ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Norfolk Island"]);
            echo "</option>
                                                \t<option value=\"+12:00\" ";
            // line 94
            if ((($context["timezone_offset"] ?? null) == "+12:00")) {
                echo "selected";
            }
            echo ">(GMT +12:00) ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Auckland, Wellington, Fiji, Kamchatka"]);
            echo "</option>
                                                \t<option value=\"+12:75\" ";
            // line 95
            if ((($context["timezone_offset"] ?? null) == "+12:75")) {
                echo "selected";
            }
            echo ">(GMT +12:45) ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Chatham Islands"]);
            echo "</option>
                                                \t<option value=\"+13:00\" ";
            // line 96
            if ((($context["timezone_offset"] ?? null) == "+13:00")) {
                echo "selected";
            }
            echo ">(GMT +13:00) ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Apia, Nukualofa"]);
            echo "</option>
                                                \t<option value=\"+14:00\" ";
            // line 97
            if ((($context["timezone_offset"] ?? null) == "+14:00")) {
                echo "selected";
            }
            echo ">(GMT +14:00) ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Line Islands, Tokelau"]);
            echo "</option>
                                                </select>
        \t\t\t\t\t\t\t\t\t</div>
        \t\t\t\t\t\t\t\t</div>
        \t\t\t\t\t\t\t\t<div class=\"form-group row\">
        \t\t\t\t\t\t\t\t\t<label class=\"col-xl-3 col-lg-3 col-form-label\">";
            // line 102
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Date Format"]);
            echo "</label>
        \t\t\t\t\t\t\t\t\t<div class=\"col-lg-9 col-xl-6\">
        \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"dateformat\" required>
                                                    <option data-hidden=\"true\"></option>
                                                    <option value=\"d/m/Y\" ";
            // line 106
            if ((($context["dateformat"] ?? null) == "d/m/Y")) {
                echo "selected";
            }
            echo ">";
            echo twig_escape_filter($this->env, twig_date_format_filter($this->env, "now", "d/m/Y"), "html", null, true);
            echo "</option>
                                                    <option value=\"m/d/Y\" ";
            // line 107
            if ((($context["dateformat"] ?? null) == "m/d/Y")) {
                echo "selected";
            }
            echo ">";
            echo twig_escape_filter($this->env, twig_date_format_filter($this->env, "now", "m/d/Y"), "html", null, true);
            echo "</option>
                                                    <option value=\"d M, Y\" ";
            // line 108
            if ((($context["dateformat"] ?? null) == "d M, Y")) {
                echo "selected";
            }
            echo ">";
            echo twig_escape_filter($this->env, twig_date_format_filter($this->env, "now", "d M, Y"), "html", null, true);
            echo "</option>
                                                    <option value=\"M d, Y\" ";
            // line 109
            if ((($context["dateformat"] ?? null) == "M d, Y")) {
                echo "selected";
            }
            echo ">";
            echo twig_escape_filter($this->env, twig_date_format_filter($this->env, "now", "M d, Y"), "html", null, true);
            echo "</option>
                                                </select>
        \t\t\t\t\t\t\t\t\t</div>
        \t\t\t\t\t\t\t\t</div>
        \t\t\t\t\t\t\t\t<div class=\"form-group row\">
        \t\t\t\t\t\t\t\t\t<label class=\"col-xl-3 col-lg-3 col-form-label\">";
            // line 114
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Currency"]);
            echo "</label>
        \t\t\t\t\t\t\t\t\t<div class=\"col-lg-9 col-xl-6\">
        \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" id=\"currency\" name=\"currency\" data-live-search=\"true\" required>
                                                    <option data-hidden=\"true\"></option>
                                                    ";
            // line 118
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["currencies"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["currency"]) {
                // line 119
                echo "                                                        <option value=\"";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["currency"], "id", [], "any", false, false, false, 119), "html", null, true);
                echo "\" ";
                if ((twig_get_attribute($this->env, $this->source, ($context["primary_currency"] ?? null), "id", [], "any", false, false, false, 119) == twig_get_attribute($this->env, $this->source, $context["currency"], "id", [], "any", false, false, false, 119))) {
                    echo "selected";
                }
                echo ">";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["currency"], "name", [], "any", false, false, false, 119), "html", null, true);
                echo "</option>
                                                    ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['currency'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 121
            echo "                                                </select>
        \t\t\t\t\t\t\t\t\t</div>
        \t\t\t\t\t\t\t\t</div>
        \t\t\t\t\t\t\t\t<div class=\"form-group row\">
        \t\t\t\t\t\t\t\t\t<label class=\"col-xl-3 col-lg-3 col-form-label\"></label>
        \t\t\t\t\t\t\t\t\t<div class=\"col-lg-9 col-xl-6\">
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" id=\"place_symbol_before\" name=\"place_symbol_before\" ";
            // line 129
            if (twig_get_attribute($this->env, $this->source, ($context["primary_currency"] ?? null), "place_symbol_before", [], "any", false, false, false, 129)) {
                echo "checked";
            }
            echo "> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Place symbol before number"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" id=\"with_space\" name=\"with_space\" ";
            // line 135
            if (twig_get_attribute($this->env, $this->source, ($context["primary_currency"] ?? null), "with_space", [], "any", false, false, false, 135)) {
                echo "checked";
            }
            echo "> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Place symbol with space"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
        \t\t\t\t\t\t\t\t\t</div>
        \t\t\t\t\t\t\t\t</div>
        \t\t\t\t\t\t\t\t<div class=\"form-group row\">
        \t\t\t\t\t\t\t\t\t<label class=\"col-xl-3 col-lg-3 col-form-label\">";
            // line 142
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Decimal Point"]);
            echo "</label>
        \t\t\t\t\t\t\t\t\t<div class=\"col-lg-9 col-xl-6\">
        \t\t\t\t\t\t\t\t\t\t<input class=\"form-control\" type=\"text\" id=\"decimal_point\" name=\"decimal_point\" value=\"";
            // line 144
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["primary_currency"] ?? null), "decimal_point", [], "any", false, false, false, 144), "html", null, true);
            echo "\" required>
        \t\t\t\t\t\t\t\t\t\t<span class=\"form-text text-muted\">";
            // line 145
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Character to use as decimal point"]);
            echo ".</span>
        \t\t\t\t\t\t\t\t\t</div>
        \t\t\t\t\t\t\t\t</div>
        \t\t\t\t\t\t\t\t<div class=\"form-group row\">
        \t\t\t\t\t\t\t\t\t<label class=\"col-xl-3 col-lg-3 col-form-label\">";
            // line 149
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Thousand Separator"]);
            echo "</label>
        \t\t\t\t\t\t\t\t\t<div class=\"col-lg-9 col-xl-6\">
        \t\t\t\t\t\t\t\t\t\t<input class=\"form-control\" type=\"text\" id=\"thousand_separator\" name=\"thousand_separator\" value=\"";
            // line 151
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["primary_currency"] ?? null), "thousand_separator", [], "any", false, false, false, 151), "html", null, true);
            echo "\" required>
        \t\t\t\t\t\t\t\t\t\t<span class=\"form-text text-muted\">";
            // line 152
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Character to separate thousands"]);
            echo ".</span>
        \t\t\t\t\t\t\t\t\t</div>
        \t\t\t\t\t\t\t\t</div>
        \t\t\t\t\t\t\t\t<div class=\"form-group row\">
        \t\t\t\t\t\t\t\t\t<label class=\"col-xl-3 col-lg-3 col-form-label\">";
            // line 156
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Number of fraction digits"]);
            echo "</label>
        \t\t\t\t\t\t\t\t\t<div class=\"col-lg-9 col-xl-6\">
        \t\t\t\t\t\t\t\t\t\t<input class=\"form-control\" type=\"text\" id=\"initbiz_money_fraction_digits\" name=\"initbiz_money_fraction_digits\" value=\"";
            // line 158
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["primary_currency"] ?? null), "initbiz_money_fraction_digits", [], "any", false, false, false, 158), "html", null, true);
            echo "\" required>
        \t\t\t\t\t\t\t\t\t</div>
        \t\t\t\t\t\t\t\t</div>
        \t\t\t\t\t\t\t</div>
        \t\t\t\t\t\t</div>
        \t\t\t\t\t</div>
        \t\t\t\t\t<div class=\"col-xl-2\"></div>
        \t\t\t\t</div>
        \t\t\t\t<div class=\"row\">
        \t\t\t\t\t<div class=\"col-xl-4\"></div>
        \t\t\t\t\t<div class=\"col-xl-8\">
                                <div class=\"form-group\">
                                    <button type=\"submit\" class=\"btn btn-primary\">";
            // line 170
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Save"]);
            echo "</button>
                                </div>
                            </div>
                        </div>
                    ";
        } elseif ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source,         // line 174
($context["this"] ?? null), "param", [], "any", false, false, false, 174), "page", [], "any", false, false, false, 174) == "company")) {
            // line 175
            echo "        \t\t\t\t<div class=\"row\">
        \t\t\t\t\t<div class=\"col-xl-2\"></div>
        \t\t\t\t\t<div class=\"col-xl-8\">
        \t\t\t\t\t\t<div class=\"kt-section kt-section--first\">
                                    <h3 class=\"kt-section__title kt-section__title-lg\">";
            // line 179
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Company Settings"]);
            echo ":</h3>
        \t\t\t\t\t\t\t<div class=\"kt-section__body\">
                                        <div class=\"form-group row\">
                                            <label class=\"col-xl-3 col-lg-3 col-form-label\">";
            // line 182
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Website Name"]);
            echo "</label>
                                            <div class=\"col-lg-9 col-xl-6\">
                                                <input class=\"form-control\" type=\"text\" name=\"company[title]\" value=\"";
            // line 184
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["company"] ?? null), "title", [], "any", false, false, false, 184), "html", null, true);
            echo "\" required>
                                            </div>
                                        </div>
                                        <div class=\"form-group row\">
                                            <label class=\"col-xl-3 col-lg-3 col-form-label\">";
            // line 188
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Website charset"]);
            echo "</label>
                                            <div class=\"col-lg-9 col-xl-6\">
                                                <input class=\"form-control\" type=\"text\" name=\"company[charset]\" value=\"";
            // line 190
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["company"] ?? null), "charset", [], "any", false, false, false, 190), "html", null, true);
            echo "\" required>
                                            </div>
                                        </div>
                                        <div class=\"form-group row\">
                                            <label class=\"col-xl-3 col-lg-3 col-form-label\">";
            // line 194
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Website Description"]);
            echo "</label>
                                            <div class=\"col-lg-9 col-xl-6\">
                                                <textarea class=\"form-control\" name=\"company[description]\" required>";
            // line 196
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["company"] ?? null), "description", [], "any", false, false, false, 196), "html", null, true);
            echo "</textarea>
                                            </div>
                                        </div>
                                        <div class=\"form-group row\">
                                            <label class=\"col-xl-3 col-lg-3 col-form-label\">";
            // line 200
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Website Keywords"]);
            echo "</label>
                                            <div class=\"col-lg-9 col-xl-6\">
                                                <input id=\"kt_tagify_2\" class=\"tagify\" placeholder='";
            // line 202
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["type"]);
            echo "...' value='";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["company"] ?? null), "keywords", [], "any", false, false, false, 202), "html", null, true);
            echo "' name=\"company[keywords]\" />
                                                <span class=\"form-text text-muted\">";
            // line 203
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Seprate with comma"]);
            echo " ,</span>
                                            </div>
                                        </div>
                                        <div class=\"form-group row\">
                                            <label class=\"col-xl-3 col-lg-3 col-form-label\">";
            // line 207
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Primary Email"]);
            echo "</label>
                                            <div class=\"col-lg-9 col-xl-6\">
                                                <div class=\"input-group\">
    \t\t\t\t\t\t\t\t\t\t\t\t<div class=\"input-group-prepend\"><span class=\"input-group-text\"><i class=\"la la-at\"></i></span></div>
    \t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" class=\"form-control\" name=\"company[primary_email]\" value=\"";
            // line 211
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["company"] ?? null), "primary_email", [], "any", false, false, false, 211), "html", null, true);
            echo "\" placeholder=\"";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Email"]);
            echo "\" aria-describedby=\"basic-addon1\">
    \t\t\t\t\t\t\t\t\t\t\t</div>
                                                <span class=\"form-text text-muted\">";
            // line 213
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["This is the main email notices will be sent to. It is also used as the from email when emailing other automatic emails"]);
            echo ".</span>
                                            </div>
                                        </div>
                                        <div class=\"form-group row\">
                                            <label class=\"col-xl-3 col-lg-3 col-form-label\">";
            // line 217
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Tax Identification Number"]);
            echo "</label>
                                            <div class=\"col-lg-9 col-xl-6\">
                                                <input class=\"form-control\" type=\"text\" name=\"company[tax_number]\" value=\"";
            // line 219
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["company"] ?? null), "tax_number", [], "any", false, false, false, 219), "html", null, true);
            echo "\" required>
                                            </div>
                                        </div>
                                        <div class=\"form-group row\">
                                            <label class=\"col-xl-3 col-lg-3 col-form-label\">";
            // line 223
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Company Phone"]);
            echo "</label>
                                            <div class=\"col-lg-9 col-xl-6\">
                                                <div class=\"input-group\">
    \t\t\t\t\t\t\t\t\t\t\t\t<div class=\"input-group-prepend\"><span class=\"input-group-text\"><i class=\"la la-phone\"></i></span></div>
    \t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" class=\"form-control\" name=\"company[company_phone]\" value=\"";
            // line 227
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["company"] ?? null), "company_phone", [], "any", false, false, false, 227), "html", null, true);
            echo "\" placeholder=\"";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Phone"]);
            echo "\" aria-describedby=\"basic-addon1\">
    \t\t\t\t\t\t\t\t\t\t\t</div>
                                            </div>
                                        </div>
                                        <div class=\"form-group row\">
                                            <label class=\"col-xl-3 col-lg-3 col-form-label\">";
            // line 232
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Company Phone 2"]);
            echo "</label>
                                            <div class=\"col-lg-9 col-xl-6\">
                                                <div class=\"input-group\">
    \t\t\t\t\t\t\t\t\t\t\t\t<div class=\"input-group-prepend\"><span class=\"input-group-text\"><i class=\"la la-phone\"></i></span></div>
    \t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" class=\"form-control\" name=\"company[company_phone_2]\" value=\"";
            // line 236
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["company"] ?? null), "company_phone_2", [], "any", false, false, false, 236), "html", null, true);
            echo "\" placeholder=\"";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Phone"]);
            echo "\" aria-describedby=\"basic-addon1\">
    \t\t\t\t\t\t\t\t\t\t\t</div>
                                            </div>
                                        </div>
                                        <div class=\"form-group row\">
                                            <label class=\"col-xl-3 col-lg-3 col-form-label\">";
            // line 241
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Company Phone 3"]);
            echo "</label>
                                            <div class=\"col-lg-9 col-xl-6\">
                                                <div class=\"input-group\">
    \t\t\t\t\t\t\t\t\t\t\t\t<div class=\"input-group-prepend\"><span class=\"input-group-text\"><i class=\"la la-phone\"></i></span></div>
    \t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" class=\"form-control\" name=\"company[company_phone_3]\" value=\"";
            // line 245
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["company"] ?? null), "company_phone_3", [], "any", false, false, false, 245), "html", null, true);
            echo "\" placeholder=\"";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Phone"]);
            echo "\" aria-describedby=\"basic-addon1\">
    \t\t\t\t\t\t\t\t\t\t\t</div>
                                            </div>
                                        </div>
                                        <div class=\"form-group row\">
                                            <label class=\"col-xl-3 col-lg-3 col-form-label\">";
            // line 250
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Facebook"]);
            echo "</label>
                                            <div class=\"col-lg-9 col-xl-6\">
                                                <input class=\"form-control\" type=\"text\" name=\"company[facebook]\" value=\"";
            // line 252
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["company"] ?? null), "facebook", [], "any", false, false, false, 252), "html", null, true);
            echo "\" required>
                                            </div>
                                        </div>
                                        <div class=\"form-group row\">
                                            <label class=\"col-xl-3 col-lg-3 col-form-label\">";
            // line 256
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Twitter"]);
            echo "</label>
                                            <div class=\"col-lg-9 col-xl-6\">
                                                <input class=\"form-control\" type=\"text\" name=\"company[twitter]\" value=\"";
            // line 258
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["company"] ?? null), "twitter", [], "any", false, false, false, 258), "html", null, true);
            echo "\" required>
                                            </div>
                                        </div>
                                        <div class=\"form-group row\">
                                            <label class=\"col-xl-3 col-lg-3 col-form-label\">";
            // line 262
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Instagram"]);
            echo "</label>
                                            <div class=\"col-lg-9 col-xl-6\">
                                                <input class=\"form-control\" type=\"text\" name=\"company[instagram]\" value=\"";
            // line 264
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["company"] ?? null), "instagram", [], "any", false, false, false, 264), "html", null, true);
            echo "\" required>
                                            </div>
                                        </div>
                                        <div class=\"location-complete\">
                                            <div class=\"form-group row\">
                                                <label class=\"col-xl-3 col-lg-3 col-form-label\">";
            // line 269
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Company Official Address"]);
            echo "</label>
                                                <div class=\"col-lg-9 col-xl-6\">
                                                    <input type=\"text\" class=\"form-control\" id=\"address\" name=\"address\" value=\"";
            // line 271
            if (twig_get_attribute($this->env, $this->source, ($context["company"] ?? null), "address", [], "any", false, false, false, 271)) {
                echo call_user_func_array($this->env->getFilter('__')->getCallable(), [twig_get_attribute($this->env, $this->source, ($context["company"] ?? null), "address", [], "any", false, false, false, 271)]);
            }
            echo "\"/>
                                                    <input type=\"hidden\" class=\"form-control\" name=\"lat\" value=\"";
            // line 272
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["company"] ?? null), "lat", [], "any", false, false, false, 272), "html", null, true);
            echo "\"/>
                                                    <input type=\"hidden\" class=\"form-control\" name=\"lng\" value=\"";
            // line 273
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["company"] ?? null), "lng", [], "any", false, false, false, 273), "html", null, true);
            echo "\"/>
                                                </div>
                                            </div>
                                            <div class=\"form-group row\">
                                                <label class=\"col-xl-3 col-lg-3 col-form-label\">";
            // line 277
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Google Map"]);
            echo "</label>
                                                <div class=\"col-lg-9 col-xl-6\">
                                                    <div id=\"map_canvas\" class=\"col-sm-12\"></div>
                                                    <span class=\"form-text text-muted\">";
            // line 280
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Change the pin to select the right location"]);
            echo "</span>
                                                </div>
                                            </div>
                                            <div class=\"form-group row\">
                                                <label class=\"col-xl-3 col-lg-3 col-form-label\">";
            // line 284
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["County"]);
            echo "</label>
                                                <div class=\"col-lg-9 col-xl-6\">
                                                    <input class=\"form-control\" type=\"text\" name=\"sublocality\" value=\"";
            // line 286
            if (twig_get_attribute($this->env, $this->source, ($context["company"] ?? null), "county", [], "any", false, false, false, 286)) {
                echo call_user_func_array($this->env->getFilter('__')->getCallable(), [twig_get_attribute($this->env, $this->source, ($context["company"] ?? null), "county", [], "any", false, false, false, 286)]);
            }
            echo "\">
                                                </div>
                                            </div>
                                            <div class=\"form-group row\">
                                                <label class=\"col-xl-3 col-lg-3 col-form-label\">";
            // line 290
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["City"]);
            echo "</label>
                                                <div class=\"col-lg-9 col-xl-6\">
                                                    <input class=\"form-control\" type=\"text\" name=\"locality\" value=\"";
            // line 292
            if (twig_get_attribute($this->env, $this->source, ($context["company"] ?? null), "city", [], "any", false, false, false, 292)) {
                echo call_user_func_array($this->env->getFilter('__')->getCallable(), [twig_get_attribute($this->env, $this->source, ($context["company"] ?? null), "city", [], "any", false, false, false, 292)]);
            }
            echo "\">
                                                </div>
                                            </div>
                                            <div class=\"form-group row\">
                                                <label class=\"col-xl-3 col-lg-3 col-form-label\">";
            // line 296
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["State / Region"]);
            echo "</label>
                                                <div class=\"col-lg-9 col-xl-6\">
                                                    <input class=\"form-control\" type=\"text\" name=\"administrative_area_level_1\" value=\"";
            // line 298
            if (twig_get_attribute($this->env, $this->source, ($context["company"] ?? null), "state", [], "any", false, false, false, 298)) {
                echo call_user_func_array($this->env->getFilter('__')->getCallable(), [twig_get_attribute($this->env, $this->source, ($context["company"] ?? null), "state", [], "any", false, false, false, 298)]);
            }
            echo "\">
                                                </div>
                                            </div>
                                            <div class=\"form-group row\">
                                                <label class=\"col-xl-3 col-lg-3 col-form-label\">";
            // line 302
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Postal Code"]);
            echo "</label>
                                                <div class=\"col-lg-9 col-xl-6\">
                                                    <input class=\"form-control\" type=\"text\" name=\"postal_code\" value=\"";
            // line 304
            if (twig_get_attribute($this->env, $this->source, ($context["company"] ?? null), "postal_code", [], "any", false, false, false, 304)) {
                echo call_user_func_array($this->env->getFilter('__')->getCallable(), [twig_get_attribute($this->env, $this->source, ($context["company"] ?? null), "postal_code", [], "any", false, false, false, 304)]);
            }
            echo "\">
                                                </div>
                                            </div>
                                            <div class=\"form-group row\">
                                                <label class=\"col-xl-3 col-lg-3 col-form-label\">";
            // line 308
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Country"]);
            echo "</label>
                                                <div class=\"col-lg-9 col-xl-6\">
                                                    <input class=\"form-control\" type=\"text\" name=\"country\" value=\"";
            // line 310
            if (twig_get_attribute($this->env, $this->source, ($context["company"] ?? null), "country", [], "any", false, false, false, 310)) {
                echo call_user_func_array($this->env->getFilter('__')->getCallable(), [twig_get_attribute($this->env, $this->source, ($context["company"] ?? null), "country", [], "any", false, false, false, 310)]);
            }
            echo "\">
                                                </div>
                                            </div>
            \t\t\t\t\t\t\t</div>
        \t\t\t\t\t\t\t</div>
        \t\t\t\t\t\t</div>
        \t\t\t\t\t\t<div class=\"kt-section\">
        \t\t\t\t\t\t\t<div class=\"kt-section__body\">
                                        <div class=\"form-group row\">
                                            <label class=\"col-xl-3 col-lg-3 col-form-label\">";
            // line 319
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Company Logo"]);
            echo "</label>
                                            <div class=\"col-lg-9 col-xl-6\">
                                                ";
            // line 321
            if (twig_get_attribute($this->env, $this->source, ($context["Logo"] ?? null), "isMulti", [], "any", false, false, false, 321)) {
                // line 322
                echo "                                                    ";
                $context['__cms_partial_params'] = [];
                echo $this->env->getExtension('Cms\Twig\Extension')->partialFunction((($context["Logo"] ?? null) . "::image-multi")                , $context['__cms_partial_params']                , true                );
                unset($context['__cms_partial_params']);
                // line 323
                echo "                                                ";
            } else {
                // line 324
                echo "                                                    ";
                $context['__cms_partial_params'] = [];
                echo $this->env->getExtension('Cms\Twig\Extension')->partialFunction((($context["Logo"] ?? null) . "::image-single")                , $context['__cms_partial_params']                , true                );
                unset($context['__cms_partial_params']);
                // line 325
                echo "                                                ";
            }
            // line 326
            echo "                                                <span class=\"form-text text-muted\">";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Perfered Size"]);
            echo " 180 x 30.</span>
                                            </div>
                                        </div>
                                        <div class=\"form-group row\">
                                            <label class=\"col-xl-3 col-lg-3 col-form-label\">";
            // line 330
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Mobile Logo"]);
            echo "</label>
                                            <div class=\"col-lg-9 col-xl-6\">
                                                ";
            // line 332
            if (twig_get_attribute($this->env, $this->source, ($context["MobileLogo"] ?? null), "isMulti", [], "any", false, false, false, 332)) {
                // line 333
                echo "                                                    ";
                $context['__cms_partial_params'] = [];
                echo $this->env->getExtension('Cms\Twig\Extension')->partialFunction((($context["MobileLogo"] ?? null) . "::image-multi")                , $context['__cms_partial_params']                , true                );
                unset($context['__cms_partial_params']);
                // line 334
                echo "                                                ";
            } else {
                // line 335
                echo "                                                    ";
                $context['__cms_partial_params'] = [];
                echo $this->env->getExtension('Cms\Twig\Extension')->partialFunction((($context["MobileLogo"] ?? null) . "::image-single")                , $context['__cms_partial_params']                , true                );
                unset($context['__cms_partial_params']);
                // line 336
                echo "                                                ";
            }
            // line 337
            echo "                                                <span class=\"form-text text-muted\">";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Max Height"]);
            echo " 40px.</span>
                                            </div>
                                        </div>
                                        <div class=\"form-group row\">
                                            <label class=\"col-xl-3 col-lg-3 col-form-label\">";
            // line 341
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Company Favicon"]);
            echo "</label>
                                            <div class=\"col-lg-9 col-xl-6\">
                                                ";
            // line 343
            if (twig_get_attribute($this->env, $this->source, ($context["Favicon"] ?? null), "isMulti", [], "any", false, false, false, 343)) {
                // line 344
                echo "                                                    ";
                $context['__cms_partial_params'] = [];
                echo $this->env->getExtension('Cms\Twig\Extension')->partialFunction((($context["Favicon"] ?? null) . "::image-multi")                , $context['__cms_partial_params']                , true                );
                unset($context['__cms_partial_params']);
                // line 345
                echo "                                                ";
            } else {
                // line 346
                echo "                                                    ";
                $context['__cms_partial_params'] = [];
                echo $this->env->getExtension('Cms\Twig\Extension')->partialFunction((($context["Favicon"] ?? null) . "::image-single")                , $context['__cms_partial_params']                , true                );
                unset($context['__cms_partial_params']);
                // line 347
                echo "                                                ";
            }
            // line 348
            echo "                                                <span class=\"form-text text-muted\">";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Size"]);
            echo " 48 x 48.</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
        \t\t\t\t\t</div>
        \t\t\t\t\t<div class=\"col-xl-2\"></div>
        \t\t\t\t</div>
        \t\t\t\t<div class=\"row\">
        \t\t\t\t\t<div class=\"col-xl-4\"></div>
        \t\t\t\t\t<div class=\"col-xl-8\">
                                <div class=\"form-group\">
                                    <button type=\"submit\" class=\"btn btn-primary\">";
            // line 360
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Save"]);
            echo "</button>
                                </div>
                            </div>
                        </div>
                    ";
        } elseif ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source,         // line 364
($context["this"] ?? null), "param", [], "any", false, false, false, 364), "page", [], "any", false, false, false, 364) == "fees")) {
            // line 365
            echo "        \t\t\t\t<div class=\"row\">
        \t\t\t\t\t<div class=\"col-xl-2\"></div>
        \t\t\t\t\t<div class=\"col-xl-8\">
        \t\t\t\t\t\t<div class=\"kt-section kt-section--first\">
                                    <h3 class=\"kt-section__title kt-section__title-lg\">";
            // line 369
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Taxes and fees"]);
            echo ":</h3>
        \t\t\t\t\t\t\t<div class=\"kt-section__body\">
                                        <div class=\"kt-section\">
                        \t\t\t\t\t<h5 class=\"kt-section__title kt-margin-b-20\">
                        \t\t\t\t\t\t";
            // line 373
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Taxes"]);
            echo "&nbsp;<span class=\"kt-badge kt-badge--danger kt-badge--dot\"></span>
                        \t\t\t\t\t</h5>
                        \t\t\t\t\t<div class=\"kt-section__content\">
                \t\t\t\t\t\t\t\t<div class=\"row\">
                    \t\t\t\t\t\t\t\t<div class=\"form-group col-lg-6\">
                    \t\t\t\t\t\t\t\t\t<label>";
            // line 378
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Tax Percentage"]);
            echo "&nbsp;<span class=\"kt-badge kt-badge--danger kt-badge--dot\"></label>
                                                        <div class=\"input-group\">
                                    \t\t\t\t\t\t<div class=\"input-group-prepend\"><span class=\"input-group-text\">%</span></div>
                    \t\t\t\t\t\t\t\t\t\t<input class=\"form-control bootstrap-touchspin-vertical-btn\" type=\"text\" name=\"taxes[percent]\" value=\"";
            // line 381
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["taxes"] ?? null), "percent", [], "any", false, false, false, 381), "html", null, true);
            echo "\" required>
                                    \t\t\t\t\t</div>
                    \t\t\t\t\t\t\t\t</div>
                    \t\t\t\t\t\t\t\t<div class=\"form-group col-lg-6\">
                    \t\t\t\t\t\t\t\t\t<label>";
            // line 385
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Shipping Insurance Percentage"]);
            echo "&nbsp;<span class=\"kt-badge kt-badge--danger kt-badge--dot\"></label>
                                                        <div class=\"input-group\">
                                    \t\t\t\t\t\t<div class=\"input-group-prepend\"><span class=\"input-group-text\">%</span></div>
                    \t\t\t\t\t\t\t\t\t\t<input class=\"form-control bootstrap-touchspin-vertical-btn\" type=\"text\" name=\"taxes[insurance]\" value=\"";
            // line 388
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["taxes"] ?? null), "insurance", [], "any", false, false, false, 388), "html", null, true);
            echo "\" required>
                                    \t\t\t\t\t</div>
                    \t\t\t\t\t\t\t\t</div>
                \t\t\t\t\t\t\t\t</div>
                                            </div>
                                        </div>
                                        <div class=\"kt-separator kt-separator--border-dashed kt-separator--space-lg kt-separator--portlet-fit\"></div>
                                        <div class=\"kt-section\">
                        \t\t\t\t\t<h5 class=\"kt-section__title kt-margin-b-20\">
                        \t\t\t\t\t\t";
            // line 397
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Default Fees"]);
            echo "&nbsp;<span class=\"kt-badge kt-badge--danger kt-badge--dot\"></span>
                        \t\t\t\t\t</h5>
                        \t\t\t\t\t<div class=\"kt-section__content\">
                \t\t\t\t\t\t\t\t<div class=\"row\">
                    \t\t\t\t\t\t\t\t<div class=\"form-group col-lg-6\">
                    \t\t\t\t\t\t\t\t\t<label>";
            // line 402
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Shipping cost"]);
            echo "&nbsp;<span class=\"kt-badge kt-badge--danger kt-badge--dot\"></label>
                                                        <div class=\"input-group\">
                                                            ";
            // line 404
            if ((twig_get_attribute($this->env, $this->source, ($context["primary_currency"] ?? null), "place_symbol_before", [], "any", false, false, false, 404) == 1)) {
                // line 405
                echo "                                        \t\t\t\t\t\t<div class=\"input-group-prepend\"><span class=\"input-group-text\">";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["primary_currency"] ?? null), "currency_symbol", [], "any", false, false, false, 405), "html", null, true);
                echo "</span></div>
                                                            ";
            }
            // line 407
            echo "                    \t\t\t\t\t\t\t\t\t\t<input class=\"form-control decimal\" type=\"text\" name=\"fees[delivery_cost]\" value=\"";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["fees"] ?? null), "delivery_cost", [], "any", false, false, false, 407), "html", null, true);
            echo "\" required>
                                                            ";
            // line 408
            if ((twig_get_attribute($this->env, $this->source, ($context["primary_currency"] ?? null), "place_symbol_before", [], "any", false, false, false, 408) == 0)) {
                // line 409
                echo "                                        \t\t\t\t\t\t<div class=\"input-group-append\"><span class=\"input-group-text\">";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["primary_currency"] ?? null), "currency_symbol", [], "any", false, false, false, 409), "html", null, true);
                echo "</span></div>
                                                            ";
            }
            // line 411
            echo "                                    \t\t\t\t\t</div>
                \t\t\t\t\t\t\t\t\t\t<span class=\"form-text text-muted\">";
            // line 412
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["The default cost to deliver the package"]);
            echo "</span>
                    \t\t\t\t\t\t\t\t</div>
                    \t\t\t\t\t\t\t\t<div class=\"form-group col-lg-6\">
                    \t\t\t\t\t\t\t\t\t<label>";
            // line 415
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Pickup cost"]);
            echo "&nbsp;<span class=\"kt-badge kt-badge--danger kt-badge--dot\"></label>
                                                        <div class=\"input-group\">
                                                            ";
            // line 417
            if ((twig_get_attribute($this->env, $this->source, ($context["primary_currency"] ?? null), "place_symbol_before", [], "any", false, false, false, 417) == 1)) {
                // line 418
                echo "                                        \t\t\t\t\t\t<div class=\"input-group-prepend\"><span class=\"input-group-text\">";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["primary_currency"] ?? null), "currency_symbol", [], "any", false, false, false, 418), "html", null, true);
                echo "</span></div>
                                                            ";
            }
            // line 420
            echo "                    \t\t\t\t\t\t\t\t\t\t<input class=\"form-control decimal\" type=\"text\" name=\"fees[pickup_cost]\" value=\"";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["fees"] ?? null), "pickup_cost", [], "any", false, false, false, 420), "html", null, true);
            echo "\" required>
                                                            ";
            // line 421
            if ((twig_get_attribute($this->env, $this->source, ($context["primary_currency"] ?? null), "place_symbol_before", [], "any", false, false, false, 421) == 0)) {
                // line 422
                echo "                                        \t\t\t\t\t\t<div class=\"input-group-append\"><span class=\"input-group-text\">";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["primary_currency"] ?? null), "currency_symbol", [], "any", false, false, false, 422), "html", null, true);
                echo "</span></div>
                                                            ";
            }
            // line 424
            echo "                                    \t\t\t\t\t</div>
                \t\t\t\t\t\t\t\t\t\t<span class=\"form-text text-muted\">";
            // line 425
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["The default cost to receive the package from the sender"]);
            echo "</span>
                    \t\t\t\t\t\t\t\t</div>
                \t\t\t\t\t\t\t\t</div>
                \t\t\t\t\t\t\t\t<div class=\"row\">
                                                    <div class=\"form-group col-lg-6\">
                                                        <label>";
            // line 430
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Delivery back cost by sender"]);
            echo "&nbsp;<span class=\"kt-badge kt-badge--danger kt-badge--dot\"></label>
                                                        <div class=\"input-group\">
                                                            ";
            // line 432
            if ((twig_get_attribute($this->env, $this->source, ($context["primary_currency"] ?? null), "place_symbol_before", [], "any", false, false, false, 432) == 1)) {
                // line 433
                echo "                                                                <div class=\"input-group-prepend\"><span class=\"input-group-text\">";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["primary_currency"] ?? null), "currency_symbol", [], "any", false, false, false, 433), "html", null, true);
                echo "</span></div>
                                                            ";
            }
            // line 435
            echo "                                                            <input class=\"form-control decimal \" type=\"text\" name=\"fees[delivery_cost_back_sender]\" value=\"";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["fees"] ?? null), "delivery_cost_back_sender", [], "any", false, false, false, 435), "html", null, true);
            echo "\" required>
                                                            ";
            // line 436
            if ((twig_get_attribute($this->env, $this->source, ($context["primary_currency"] ?? null), "place_symbol_before", [], "any", false, false, false, 436) == 0)) {
                // line 437
                echo "                                                                <div class=\"input-group-append\"><span class=\"input-group-text\">";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["primary_currency"] ?? null), "currency_symbol", [], "any", false, false, false, 437), "html", null, true);
                echo "</span></div>
                                                            ";
            }
            // line 439
            echo "                                                        </div>
                \t\t\t\t\t\t\t\t\t\t<span class=\"form-text text-muted\">";
            // line 440
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["The default cost to return the package fees to the sender"]);
            echo "</span>
                                                    </div>
                    \t\t\t\t\t\t\t\t<div class=\"form-group col-lg-6\">
                    \t\t\t\t\t\t\t\t\t<label>";
            // line 443
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Delivery back cost by receiver"]);
            echo "&nbsp;<span class=\"kt-badge kt-badge--danger kt-badge--dot\"></label>
                                                        <div class=\"input-group\">
                                                            ";
            // line 445
            if ((twig_get_attribute($this->env, $this->source, ($context["primary_currency"] ?? null), "place_symbol_before", [], "any", false, false, false, 445) == 1)) {
                // line 446
                echo "                                        \t\t\t\t\t\t<div class=\"input-group-prepend\"><span class=\"input-group-text\">";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["primary_currency"] ?? null), "currency_symbol", [], "any", false, false, false, 446), "html", null, true);
                echo "</span></div>
                                                            ";
            }
            // line 448
            echo "                    \t\t\t\t\t\t\t\t\t\t<input class=\"form-control decimal \" type=\"text\" name=\"fees[delivery_cost_back_receiver]\" value=\"";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["fees"] ?? null), "delivery_cost_back_receiver", [], "any", false, false, false, 448), "html", null, true);
            echo "\" required>
                                                            ";
            // line 449
            if ((twig_get_attribute($this->env, $this->source, ($context["primary_currency"] ?? null), "place_symbol_before", [], "any", false, false, false, 449) == 0)) {
                // line 450
                echo "                                        \t\t\t\t\t\t<div class=\"input-group-append\"><span class=\"input-group-text\">";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["primary_currency"] ?? null), "currency_symbol", [], "any", false, false, false, 450), "html", null, true);
                echo "</span></div>
                                                            ";
            }
            // line 452
            echo "                                    \t\t\t\t\t</div>
                \t\t\t\t\t\t\t\t\t\t<span class=\"form-text text-muted\">";
            // line 453
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["The default cost to return the package fees to the sender"]);
            echo "</span>
                    \t\t\t\t\t\t\t\t</div>
                \t\t\t\t\t\t\t\t</div>
                                            </div>
                                        </div>
                                        <div class=\"kt-separator kt-separator--border-dashed kt-separator--space-lg kt-separator--portlet-fit\"></div>
        \t\t\t\t\t\t\t</div>
        \t\t\t\t\t\t</div>
        \t\t\t\t\t</div>
        \t\t\t\t\t<div class=\"col-xl-2\"></div>
        \t\t\t\t</div>
        \t\t\t\t<div class=\"row\">
        \t\t\t\t\t<div class=\"col-xl-4\"></div>
        \t\t\t\t\t<div class=\"col-xl-8\">
                                <div class=\"form-group\">
                                    <button type=\"submit\" class=\"btn btn-primary\">";
            // line 468
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Save"]);
            echo "</button>
                                </div>
                            </div>
                        </div>
        \t\t\t\t<div class=\"row\">
                            <div class=\"col-xl-2\"></div>
        \t\t\t\t\t<div class=\"col-xl-8\">

                                <div class=\"kt-separator kt-separator--border-dashed kt-separator--space-lg kt-separator--portlet-fit\"></div>
                                <div class=\"kt-section\">
                                    <h5 class=\"kt-section__title kt-margin-b-20\">
                                        ";
            // line 479
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Fees by places"]);
            echo "&nbsp;<span class=\"kt-badge kt-badge--danger kt-badge--dot\"></span>
                                        <div class=\"kt-section__toolbar\">
                                            <a href=\"";
            // line 481
            echo url("dashboard/settings/fees/create");
            echo "\" class=\"btn btn-success\">";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Add New Fees"]);
            echo "</a>
                                        </div>
                                    </h5>
                                    <div class=\"kt-section__content\">
                                        <div class=\"kt-datatable\"></div>
                                    </div>
                                </div>
                            </div>
        \t\t\t\t\t<div class=\"col-xl-2\"></div>
                        </div>
                    ";
        } elseif ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source,         // line 491
($context["this"] ?? null), "param", [], "any", false, false, false, 491), "page", [], "any", false, false, false, 491) == "invoice")) {
            // line 492
            echo "        \t\t\t\t<div class=\"row\">
        \t\t\t\t\t<div class=\"col-xl-2\"></div>
        \t\t\t\t\t<div class=\"col-xl-8\">
        \t\t\t\t\t\t<div class=\"kt-section kt-section--first\">
                                    <h3 class=\"kt-section__title kt-section__title-lg\">";
            // line 496
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Tracking and Invoice"]);
            echo ":</h3>
        \t\t\t\t\t\t\t<div class=\"kt-section__body\">
                                        <div class=\"kt-section\">
                        \t\t\t\t\t<h5 class=\"kt-section__title kt-margin-b-20\">
                        \t\t\t\t\t\t";
            // line 500
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Tracking"]);
            echo "&nbsp;<span class=\"kt-badge kt-badge--danger kt-badge--dot\"></span>
                        \t\t\t\t\t</h5>
                        \t\t\t\t\t<div class=\"kt-section__content\">
                \t\t\t\t\t\t\t\t<div class=\"row\">
                    \t\t\t\t\t\t\t\t<div class=\"form-group col-lg-6\">
                    \t\t\t\t\t\t\t\t\t<label>";
            // line 505
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Shipment Prefix"]);
            echo "&nbsp;<span class=\"kt-badge kt-badge--danger kt-badge--dot\"></label>
                \t\t\t\t\t\t\t\t\t\t<input class=\"form-control\" type=\"text\" name=\"tracking[prefix_order]\" value=\"";
            // line 506
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["tracking"] ?? null), "prefix_order", [], "any", false, false, false, 506), "html", null, true);
            echo "\" required>
                    \t\t\t\t\t\t\t\t</div>
                    \t\t\t\t\t\t\t\t<div class=\"form-group col-lg-6\">
                    \t\t\t\t\t\t\t\t\t<label>";
            // line 509
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Shipment Number of digits in the tracking"]);
            echo "&nbsp;<span class=\"kt-badge kt-badge--danger kt-badge--dot\"></label>
                \t\t\t\t\t\t\t\t\t\t<input class=\"form-control\" type=\"text\" name=\"tracking[numbers_order]\" value=\"";
            // line 510
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["tracking"] ?? null), "numbers_order", [], "any", false, false, false, 510), "html", null, true);
            echo "\" required>
                \t\t\t\t\t\t\t\t\t\t<span class=\"form-text text-muted\">";
            // line 511
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["EXAMPLE"]);
            echo ": 0000001</span>
                    \t\t\t\t\t\t\t\t</div>
                \t\t\t\t\t\t\t\t</div>
                                                <!--
                    \t\t\t\t\t\t\t\t<div class=\"row\">
                        \t\t\t\t\t\t\t\t<div class=\"form-group col-lg-6\">
                        \t\t\t\t\t\t\t\t\t<label>";
            // line 517
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Container Prefix"]);
            echo "&nbsp;<span class=\"kt-badge kt-badge--danger kt-badge--dot\"></label>
                    \t\t\t\t\t\t\t\t\t\t<input class=\"form-control\" type=\"text\" name=\"tracking[prefix_container]\" value=\"";
            // line 518
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["tracking"] ?? null), "prefix_container", [], "any", false, false, false, 518), "html", null, true);
            echo "\" required>
                        \t\t\t\t\t\t\t\t</div>
                        \t\t\t\t\t\t\t\t<div class=\"form-group col-lg-6\">
                        \t\t\t\t\t\t\t\t\t<label>";
            // line 521
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Container Number of digits in the tracking"]);
            echo "&nbsp;<span class=\"kt-badge kt-badge--danger kt-badge--dot\"></label>
                    \t\t\t\t\t\t\t\t\t\t<input class=\"form-control\" type=\"text\" name=\"tracking[numbers_container]\" value=\"";
            // line 522
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["tracking"] ?? null), "numbers_container", [], "any", false, false, false, 522), "html", null, true);
            echo "\" required>
                    \t\t\t\t\t\t\t\t\t\t<span class=\"form-text text-muted\">";
            // line 523
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["EXAMPLE"]);
            echo ": 0000001</span>
                        \t\t\t\t\t\t\t\t</div>
                                                    </div>
                                                -->
                                                <div class=\"row\">
                    \t\t\t\t\t\t\t\t<div class=\"form-group col-lg-6\">
                    \t\t\t\t\t\t\t\t\t<label>";
            // line 529
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Default Delivery Time"]);
            echo "&nbsp;<span class=\"kt-badge kt-badge--danger kt-badge--dot\"></label>
                \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"tracking[default_deliverytime]\" required>
                                                            <option data-hidden=\"true\"></option>
                                                            ";
            // line 532
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["deliverytimes"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["time"]) {
                // line 533
                echo "                \t\t\t\t\t\t\t\t\t\t\t\t<option value=\"";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["time"], "id", [], "any", false, false, false, 533), "html", null, true);
                echo "\" ";
                if ((twig_get_attribute($this->env, $this->source, ($context["tracking"] ?? null), "default_deliverytime", [], "any", false, false, false, 533) == twig_get_attribute($this->env, $this->source, $context["time"], "id", [], "any", false, false, false, 533))) {
                    echo "selected";
                }
                echo ">";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["time"], "name", [], "any", false, false, false, 533), "html", null, true);
                echo "</option>
                                                            ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['time'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 535
            echo "                                                        </select>
                    \t\t\t\t\t\t\t\t</div>
                    \t\t\t\t\t\t\t\t<div class=\"form-group col-lg-6\">
                    \t\t\t\t\t\t\t\t\t<label>";
            // line 538
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Default Status Time"]);
            echo "&nbsp;<span class=\"kt-badge kt-badge--danger kt-badge--dot\"></label>
                \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"tracking[default_status]\" required>
                                                            <option data-hidden=\"true\"></option>
                                                            ";
            // line 541
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["statuses"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["status"]) {
                // line 542
                echo "                \t\t\t\t\t\t\t\t\t\t\t\t<option value=\"";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["status"], "id", [], "any", false, false, false, 542), "html", null, true);
                echo "\" ";
                if ((twig_get_attribute($this->env, $this->source, ($context["tracking"] ?? null), "default_status", [], "any", false, false, false, 542) == twig_get_attribute($this->env, $this->source, $context["status"], "id", [], "any", false, false, false, 542))) {
                    echo "selected";
                }
                echo ">";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["status"], "name", [], "any", false, false, false, 542), "html", null, true);
                echo "</option>
                                                            ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['status'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 544
            echo "                                                        </select>
                    \t\t\t\t\t\t\t\t</div>
                                                </div>
                                                <div class=\"row\">
                    \t\t\t\t\t\t\t\t<div class=\"form-group col-lg-12\">
                    \t\t\t\t\t\t\t\t\t<label>";
            // line 549
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Default Tracking ID"]);
            echo "&nbsp;<span class=\"kt-badge kt-badge--danger kt-badge--dot\"></label>
                \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"tracking[default_tracking_id]\" required>
                                                            <option data-hidden=\"true\"></option>
            \t\t\t\t\t\t\t\t\t\t\t\t<option value=\"1\" ";
            // line 552
            if ((twig_get_attribute($this->env, $this->source, ($context["tracking"] ?? null), "default_tracking_id", [], "any", false, false, false, 552) == 1)) {
                echo "selected";
            }
            echo ">";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Country"]);
            echo "</option>
            \t\t\t\t\t\t\t\t\t\t\t\t<option value=\"2\" ";
            // line 553
            if ((twig_get_attribute($this->env, $this->source, ($context["tracking"] ?? null), "default_tracking_id", [], "any", false, false, false, 553) == 2)) {
                echo "selected";
            }
            echo ">";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["State"]);
            echo "</option>
            \t\t\t\t\t\t\t\t\t\t\t\t<option value=\"3\" ";
            // line 554
            if ((twig_get_attribute($this->env, $this->source, ($context["tracking"] ?? null), "default_tracking_id", [], "any", false, false, false, 554) == 3)) {
                echo "selected";
            }
            echo ">";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["City"]);
            echo "</option>
            \t\t\t\t\t\t\t\t\t\t\t\t<option value=\"4\" ";
            // line 555
            if ((twig_get_attribute($this->env, $this->source, ($context["tracking"] ?? null), "default_tracking_id", [], "any", false, false, false, 555) == 4)) {
                echo "selected";
            }
            echo ">";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Area"]);
            echo "</option>
                                                        </select>
                \t\t\t\t\t\t\t\t\t\t<span class=\"form-text text-muted\">";
            // line 557
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["The id that will be shown on your print label so you can detect by the id from and where this shipment will go through"]);
            echo "</span>
                    \t\t\t\t\t\t\t\t</div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class=\"kt-separator kt-separator--border-dashed kt-separator--space-lg kt-separator--portlet-fit\"></div>
                                        <div class=\"kt-section\">
                        \t\t\t\t\t<h5 class=\"kt-section__title kt-margin-b-20\">
                        \t\t\t\t\t\t";
            // line 565
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Invoice"]);
            echo "&nbsp;<span class=\"kt-badge kt-badge--danger kt-badge--dot\"></span>
                        \t\t\t\t\t</h5>
                        \t\t\t\t\t<div class=\"kt-section__content\">
                                                <div class=\"row\">
                    \t\t\t\t\t\t\t\t<div class=\"form-group col-lg-12\">
                    \t\t\t\t\t\t\t\t\t<label>";
            // line 570
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Default Invoice Terms"]);
            echo "</label>
                \t\t\t\t\t\t\t\t\t\t<textarea class=\"form-control\" name=\"invoice[terms]\">";
            // line 571
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["invoice"] ?? null), "terms", [], "any", false, false, false, 571), "html", null, true);
            echo "</textarea>
                    \t\t\t\t\t\t\t\t</div>
                                                </div>
                                                <div class=\"row\">
                    \t\t\t\t\t\t\t\t<div class=\"form-group col-lg-6\">
                    \t\t\t\t\t\t\t\t\t<label>";
            // line 576
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Invoice Company Signing"]);
            echo "</label>
                                                        <input class=\"form-control\" type=\"text\" name=\"invoice[signing_company]\" value=\"";
            // line 577
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["invoice"] ?? null), "signing_company", [], "any", false, false, false, 577), "html", null, true);
            echo "\">
                    \t\t\t\t\t\t\t\t</div>
                    \t\t\t\t\t\t\t\t<div class=\"form-group col-lg-6\">
                    \t\t\t\t\t\t\t\t\t<label>";
            // line 580
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Invoice Customer Signing"]);
            echo "</label>
                                                        <input class=\"form-control\" type=\"text\" name=\"invoice[signing_customer]\" value=\"";
            // line 581
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["invoice"] ?? null), "signing_customer", [], "any", false, false, false, 581), "html", null, true);
            echo "\">
                    \t\t\t\t\t\t\t\t</div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class=\"kt-separator kt-separator--border-dashed kt-separator--space-lg kt-separator--portlet-fit\"></div>
        \t\t\t\t\t\t\t</div>
        \t\t\t\t\t\t</div>
        \t\t\t\t\t</div>
        \t\t\t\t\t<div class=\"col-xl-2\"></div>
        \t\t\t\t</div>
        \t\t\t\t<div class=\"row\">
        \t\t\t\t\t<div class=\"col-xl-4\"></div>
        \t\t\t\t\t<div class=\"col-xl-8\">
                                <div class=\"form-group\">
                                    <button type=\"submit\" class=\"btn btn-primary\">";
            // line 596
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Save"]);
            echo "</button>
                                </div>
                            </div>
                        </div>
                    ";
        } elseif ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source,         // line 600
($context["this"] ?? null), "param", [], "any", false, false, false, 600), "page", [], "any", false, false, false, 600) == "branches")) {
            // line 601
            echo "                        <div class=\"kt-section kt-section--first\">
                            <div class=\"kt-section__body\">
                                <div class=\"kt-datatable\"></div>
                            </div>
                        </div>
                    ";
        } elseif ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source,         // line 606
($context["this"] ?? null), "param", [], "any", false, false, false, 606), "page", [], "any", false, false, false, 606) == "cars")) {
            // line 607
            echo "                        <div class=\"kt-section kt-section--first\">
                            <div class=\"kt-section__body\">
                                <div class=\"kt-datatable\"></div>
                            </div>
                        </div>
                    ";
        } elseif ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source,         // line 612
($context["this"] ?? null), "param", [], "any", false, false, false, 612), "page", [], "any", false, false, false, 612) == "statuses")) {
            // line 613
            echo "                        <div class=\"kt-section kt-section--first\">
                            <div class=\"kt-section__body\">
                                <div class=\"kt-datatable\"></div>
                            </div>
                        </div>
                    ";
        } elseif ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source,         // line 618
($context["this"] ?? null), "param", [], "any", false, false, false, 618), "page", [], "any", false, false, false, 618) == "treasury")) {
            // line 619
            echo "                        <div class=\"kt-section kt-section--first\">
                            <div class=\"kt-section__body\">
                                <div class=\"kt-datatable\"></div>
                            </div>
                        </div>
                    ";
        } elseif ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source,         // line 624
($context["this"] ?? null), "param", [], "any", false, false, false, 624), "page", [], "any", false, false, false, 624) == "categories")) {
            // line 625
            echo "                        <div class=\"kt-section kt-section--first\">
                            <div class=\"kt-section__body\">
                                <div class=\"kt-datatable\"></div>
                            </div>
                        </div>
                    ";
        } elseif ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source,         // line 630
($context["this"] ?? null), "param", [], "any", false, false, false, 630), "page", [], "any", false, false, false, 630) == "couriers")) {
            // line 631
            echo "                        <div class=\"kt-section kt-section--first\">
                            <div class=\"kt-section__body\">
                                <div class=\"kt-datatable\"></div>
                            </div>
                        </div>
                    ";
        } elseif ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source,         // line 636
($context["this"] ?? null), "param", [], "any", false, false, false, 636), "page", [], "any", false, false, false, 636) == "deliverytimes")) {
            // line 637
            echo "                        <div class=\"kt-section kt-section--first\">
                            <div class=\"kt-section__body\">
                                <div class=\"kt-datatable\"></div>
                            </div>
                        </div>
                    ";
        } elseif ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source,         // line 642
($context["this"] ?? null), "param", [], "any", false, false, false, 642), "page", [], "any", false, false, false, 642) == "shipping")) {
            // line 643
            echo "                        <div class=\"kt-section kt-section--first\">
                            <div class=\"kt-section__body\">
                                <div class=\"kt-datatable\"></div>
                            </div>
                        </div>
                    ";
        } elseif ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source,         // line 648
($context["this"] ?? null), "param", [], "any", false, false, false, 648), "page", [], "any", false, false, false, 648) == "packaging")) {
            // line 649
            echo "                        <div class=\"kt-section kt-section--first\">
                            <div class=\"kt-section__body\">
                                <div class=\"kt-datatable\"></div>
                            </div>
                        </div>
                    ";
        } elseif ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source,         // line 654
($context["this"] ?? null), "param", [], "any", false, false, false, 654), "page", [], "any", false, false, false, 654) == "countries")) {
            // line 655
            echo "                        <div class=\"kt-section kt-section--first\">
                            <div class=\"kt-section__body\">
                                <div class=\"kt-datatable\"></div>
                            </div>
                        </div>
                    ";
        } elseif ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source,         // line 660
($context["this"] ?? null), "param", [], "any", false, false, false, 660), "page", [], "any", false, false, false, 660) == "states")) {
            // line 661
            echo "                        <div class=\"kt-section kt-section--first\">
                            <div class=\"kt-section__body\">
                                <div class=\"kt-datatable\"></div>
                            </div>
                        </div>
                    ";
        } elseif ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source,         // line 666
($context["this"] ?? null), "param", [], "any", false, false, false, 666), "page", [], "any", false, false, false, 666) == "cities")) {
            // line 667
            echo "                        <div class=\"kt-section kt-section--first\">
                            <div class=\"kt-section__body\">
                                <div class=\"kt-datatable\"></div>
                            </div>
                        </div>
                    ";
        } elseif ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source,         // line 672
($context["this"] ?? null), "param", [], "any", false, false, false, 672), "page", [], "any", false, false, false, 672) == "areas")) {
            // line 673
            echo "                        <div class=\"kt-section kt-section--first\">
                            <div class=\"kt-section__body\">
                                <div class=\"kt-datatable\"></div>
                            </div>
                        </div>
                    ";
        } elseif ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source,         // line 678
($context["this"] ?? null), "param", [], "any", false, false, false, 678), "page", [], "any", false, false, false, 678) == "sms")) {
            // line 679
            echo "        \t\t\t\t<div class=\"row\">
        \t\t\t\t\t<div class=\"col-xl-2\"></div>
        \t\t\t\t\t<div class=\"col-xl-8\">
        \t\t\t\t\t\t<div class=\"kt-section kt-section--first\">
                                    <h3 class=\"kt-section__title kt-section__title-lg\">";
            // line 683
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["SMS"]);
            echo ":</h3>
        \t\t\t\t\t\t\t<div class=\"kt-section__body\">
        \t\t\t\t\t\t\t\t<div class=\"form-group row\">
        \t\t\t\t\t\t\t\t\t<label class=\"col-xl-3 col-lg-3 col-form-label\">";
            // line 686
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Enable SMS"]);
            echo "</label>
        \t\t\t\t\t\t\t\t\t<div class=\"col-lg-9 col-xl-6\">
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" id=\"enable_sms_notification\" name=\"enable\" ";
            // line 690
            if ((twig_get_attribute($this->env, $this->source, ($context["sms"] ?? null), "enable", [], "any", false, false, false, 690) == 1)) {
                echo "checked";
            }
            echo "> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Yes"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
        \t\t\t\t\t\t\t\t\t</div>
        \t\t\t\t\t\t\t\t</div>
        \t\t\t\t\t\t\t\t<div class=\"";
            // line 696
            if ((twig_get_attribute($this->env, $this->source, ($context["sms"] ?? null), "enable", [], "any", false, false, false, 696) != 1)) {
                echo "kt-hidden";
            }
            echo "\" id=\"sms_notification\">
            \t\t\t\t\t\t\t\t<div class=\"form-group row\">
            \t\t\t\t\t\t\t\t\t<label class=\"col-xl-3 col-lg-3 col-form-label\">";
            // line 698
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["SMS Provider"]);
            echo "&nbsp;<span class=\"kt-badge kt-badge--danger kt-badge--dot\"></span></label>
            \t\t\t\t\t\t\t\t\t<div class=\"col-lg-9 col-xl-6\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control gateway\" name=\"gateway\" required>
                                                        <option data-hidden=\"true\"></option>
        \t\t\t\t\t\t\t\t\t\t\t\t<option value=\"clickatell\" ";
            // line 702
            if ((twig_get_attribute($this->env, $this->source, ($context["sms"] ?? null), "gateway", [], "any", false, false, false, 702) == "clickatell")) {
                echo "selected";
            }
            echo ">Clickatell</option>
        \t\t\t\t\t\t\t\t\t\t\t\t<!--<option value=\"twilio\" ";
            // line 703
            if ((twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "provider", [], "any", false, false, false, 703) == "twilio")) {
                echo "selected";
            }
            echo ">Twilio</option>-->
                                                    </select>
            \t\t\t\t\t\t\t\t\t</div>
            \t\t\t\t\t\t\t\t</div>
            \t\t\t\t\t\t\t\t<div class=\"clickatell ";
            // line 707
            if ((twig_get_attribute($this->env, $this->source, ($context["sms"] ?? null), "gateway", [], "any", false, false, false, 707) != "clickatell")) {
                echo "kt-hidden";
            }
            echo "\">
                \t\t\t\t\t\t\t\t<div class=\"form-group row\">
                \t\t\t\t\t\t\t\t\t<label class=\"col-xl-3 col-lg-3 col-form-label\">";
            // line 709
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["App ID"]);
            echo "&nbsp;<span class=\"kt-badge kt-badge--danger kt-badge--dot\"></span></label>
                \t\t\t\t\t\t\t\t\t<div class=\"col-lg-9 col-xl-6\">
                \t\t\t\t\t\t\t\t\t\t<input class=\"form-control\" type=\"text\" name=\"clickatell_api_id\" value=\"";
            // line 711
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["sms"] ?? null), "clickatell_api_id", [], "any", false, false, false, 711), "html", null, true);
            echo "\" required>
                \t\t\t\t\t\t\t\t\t</div>
                \t\t\t\t\t\t\t\t</div>
            \t\t\t\t\t\t\t\t</div>
        \t\t\t\t\t\t\t\t</div>
        \t\t\t\t\t\t\t</div>
        \t\t\t\t\t\t</div>
        \t\t\t\t\t</div>
        \t\t\t\t\t<div class=\"col-xl-2\"></div>
        \t\t\t\t</div>
        \t\t\t\t<div class=\"row\">
        \t\t\t\t\t<div class=\"col-xl-4\"></div>
        \t\t\t\t\t<div class=\"col-xl-8\">
                                <div class=\"form-group\">
                                    <button type=\"submit\" class=\"btn btn-primary\">";
            // line 725
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Save"]);
            echo "</button>
                                </div>
                            </div>
                        </div>
                    ";
        } elseif ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source,         // line 729
($context["this"] ?? null), "param", [], "any", false, false, false, 729), "page", [], "any", false, false, false, 729) == "notifications")) {
            // line 730
            echo "        \t\t\t\t<div class=\"row\">
        \t\t\t\t\t<div class=\"col-xl-2\"></div>
        \t\t\t\t\t<div class=\"col-xl-8\">
        \t\t\t\t\t\t<div class=\"kt-section kt-section--first\">
                                    <h3 class=\"kt-section__title kt-section__title-lg\">";
            // line 734
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Notifications"]);
            echo ":</h3>
        \t\t\t\t\t\t\t<div class=\"kt-section__body\">
        \t\t\t\t\t\t\t\t<div class=\"form-group row\">
        \t\t\t\t\t\t\t\t\t<label class=\"col-xl-3 col-lg-3 col-form-label\">";
            // line 737
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Enable Live Notification"]);
            echo "</label>
        \t\t\t\t\t\t\t\t\t<div class=\"col-lg-9 col-xl-6\">
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" id=\"enable_live_notification\" name=\"live\" ";
            // line 741
            if ((twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "live", [], "any", false, false, false, 741) == 1)) {
                echo "checked";
            }
            echo "> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Yes"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
        \t\t\t\t\t\t\t\t\t</div>
        \t\t\t\t\t\t\t\t</div>
        \t\t\t\t\t\t\t\t<div class=\"";
            // line 747
            if ((twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "live", [], "any", false, false, false, 747) != 1)) {
                echo "kt-hidden";
            }
            echo "\" id=\"live_notification\">
            \t\t\t\t\t\t\t\t<div class=\"form-group row\">
            \t\t\t\t\t\t\t\t\t<label class=\"col-xl-3 col-lg-3 col-form-label\">";
            // line 749
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Live Notification Provider"]);
            echo "&nbsp;<span class=\"kt-badge kt-badge--danger kt-badge--dot\"></span></label>
            \t\t\t\t\t\t\t\t\t<div class=\"col-lg-9 col-xl-6\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control provider\" name=\"provider\" required>
                                                        <option data-hidden=\"true\"></option>
        \t\t\t\t\t\t\t\t\t\t\t\t<option value=\"pusher\" ";
            // line 753
            if ((twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "provider", [], "any", false, false, false, 753) == "pusher")) {
                echo "selected";
            }
            echo ">Pusher</option>
                                                    </select>
            \t\t\t\t\t\t\t\t\t</div>
            \t\t\t\t\t\t\t\t</div>
            \t\t\t\t\t\t\t\t<div class=\"pusher ";
            // line 757
            if ((twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "provider", [], "any", false, false, false, 757) != "pusher")) {
                echo "kt-hidden";
            }
            echo "\">
                \t\t\t\t\t\t\t\t<div class=\"form-group row\">
                \t\t\t\t\t\t\t\t\t<label class=\"col-xl-3 col-lg-3 col-form-label\">";
            // line 759
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["App ID"]);
            echo "&nbsp;<span class=\"kt-badge kt-badge--danger kt-badge--dot\"></span></label>
                \t\t\t\t\t\t\t\t\t<div class=\"col-lg-9 col-xl-6\">
                \t\t\t\t\t\t\t\t\t\t<input class=\"form-control\" type=\"text\" name=\"pusher[app_id]\" value=\"";
            // line 761
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "pusher", [], "any", false, false, false, 761), "app_id", [], "any", false, false, false, 761), "html", null, true);
            echo "\" required>
                \t\t\t\t\t\t\t\t\t</div>
                \t\t\t\t\t\t\t\t</div>
                \t\t\t\t\t\t\t\t<div class=\"form-group row\">
                \t\t\t\t\t\t\t\t\t<label class=\"col-xl-3 col-lg-3 col-form-label\">";
            // line 765
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Key"]);
            echo "&nbsp;<span class=\"kt-badge kt-badge--danger kt-badge--dot\"></span></label>
                \t\t\t\t\t\t\t\t\t<div class=\"col-lg-9 col-xl-6\">
                \t\t\t\t\t\t\t\t\t\t<input class=\"form-control\" type=\"text\" name=\"pusher[key]\" value=\"";
            // line 767
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "pusher", [], "any", false, false, false, 767), "key", [], "any", false, false, false, 767), "html", null, true);
            echo "\" required>
                \t\t\t\t\t\t\t\t\t</div>
                \t\t\t\t\t\t\t\t</div>
                \t\t\t\t\t\t\t\t<div class=\"form-group row\">
                \t\t\t\t\t\t\t\t\t<label class=\"col-xl-3 col-lg-3 col-form-label\">";
            // line 771
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Secret"]);
            echo "&nbsp;<span class=\"kt-badge kt-badge--danger kt-badge--dot\"></span></label>
                \t\t\t\t\t\t\t\t\t<div class=\"col-lg-9 col-xl-6\">
                \t\t\t\t\t\t\t\t\t\t<input class=\"form-control\" type=\"text\" name=\"pusher[secret]\" value=\"";
            // line 773
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "pusher", [], "any", false, false, false, 773), "secret", [], "any", false, false, false, 773), "html", null, true);
            echo "\" required>
                \t\t\t\t\t\t\t\t\t</div>
                \t\t\t\t\t\t\t\t</div>
                \t\t\t\t\t\t\t\t<div class=\"form-group row\">
                \t\t\t\t\t\t\t\t\t<label class=\"col-xl-3 col-lg-3 col-form-label\">";
            // line 777
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Cluster"]);
            echo "&nbsp;<span class=\"kt-badge kt-badge--danger kt-badge--dot\"></span></label>
                \t\t\t\t\t\t\t\t\t<div class=\"col-lg-9 col-xl-6\">
                \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"pusher[cluster]\" required>
                                                            <option data-hidden=\"true\"></option>
                                                            <option ";
            // line 781
            if ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "pusher", [], "any", false, false, false, 781), "cluster", [], "any", false, false, false, 781) == "mt1")) {
                echo "selected";
            }
            echo " value=\"mt1\">mt1 (US East (N. Virginia))</option>
                                                            <option ";
            // line 782
            if ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "pusher", [], "any", false, false, false, 782), "cluster", [], "any", false, false, false, 782) == "ap1")) {
                echo "selected";
            }
            echo " value=\"ap1\">ap1 (Asia Pacific (Singapore))</option>
                                                            <option ";
            // line 783
            if ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "pusher", [], "any", false, false, false, 783), "cluster", [], "any", false, false, false, 783) == "ap2")) {
                echo "selected";
            }
            echo " value=\"ap2\">ap2 (Asia Pacific (Mumbai))</option>
                                                            <option ";
            // line 784
            if ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "pusher", [], "any", false, false, false, 784), "cluster", [], "any", false, false, false, 784) == "us2")) {
                echo "selected";
            }
            echo " value=\"us2\">us2 (US East (Ohio))</option>
                                                            <option ";
            // line 785
            if ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "pusher", [], "any", false, false, false, 785), "cluster", [], "any", false, false, false, 785) == "ap3")) {
                echo "selected";
            }
            echo " value=\"ap3\">ap3 (Asia Pacific (Tokyo))</option>
                                                            <option ";
            // line 786
            if ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "pusher", [], "any", false, false, false, 786), "cluster", [], "any", false, false, false, 786) == "us3")) {
                echo "selected";
            }
            echo " value=\"us3\">us3 (US West (Oregon))</option>
                                                            <option ";
            // line 787
            if ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "pusher", [], "any", false, false, false, 787), "cluster", [], "any", false, false, false, 787) == "ap4")) {
                echo "selected";
            }
            echo " value=\"ap4\">ap4 (Asia Pacific (Sydney))</option>
                                                            <option ";
            // line 788
            if ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "pusher", [], "any", false, false, false, 788), "cluster", [], "any", false, false, false, 788) == "eu")) {
                echo "selected";
            }
            echo " value=\"eu\">eu (EU (Ireland))</option></select>
                                                        </select>
                \t\t\t\t\t\t\t\t\t</div>
                \t\t\t\t\t\t\t\t</div>
            \t\t\t\t\t\t\t\t</div>
            \t\t\t\t\t\t\t</div>
        \t\t\t\t\t\t\t</div>
        \t\t\t\t\t\t</div>
        \t\t\t\t\t\t<div class=\"kt-section kt-section--first\">
                                    <h3 class=\"kt-section__title kt-section__title-lg\">";
            // line 797
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Notifications Responsibility"]);
            echo ":</h3>
        \t\t\t\t\t\t\t<div class=\"kt-section__body\">
                                        <div class=\"form-group row\">
                                            <label class=\"col-xl-3 col-lg-3 col-form-label\">";
            // line 800
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["New Shipments Notifications"]);
            echo "</label>
                                            <div class=\"col-lg-9 col-xl-6\">
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[new_shipments][]\" ";
            // line 804
            if (twig_in_filter(1, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 804), "new_shipments", [], "any", false, false, false, 804))) {
                echo "checked";
            }
            echo " value=\"1\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["System Administrators"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[new_shipments][]\" ";
            // line 810
            if (twig_in_filter(2, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 810), "new_shipments", [], "any", false, false, false, 810))) {
                echo "checked";
            }
            echo " value=\"2\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Supervisors"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[new_shipments][]\" ";
            // line 816
            if (twig_in_filter(3, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 816), "new_shipments", [], "any", false, false, false, 816))) {
                echo "checked";
            }
            echo " value=\"3\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Departments Moderators"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[new_shipments][]\" ";
            // line 822
            if (twig_in_filter(4, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 822), "new_shipments", [], "any", false, false, false, 822))) {
                echo "checked";
            }
            echo " value=\"4\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Departments Employees"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_departments ";
            // line 826
            if ((!twig_in_filter(3, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 826), "new_shipments", [], "any", false, false, false, 826)) && !twig_in_filter(4, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 826), "new_shipments", [], "any", false, false, false, 826)))) {
                echo "kt-hidden";
            }
            echo "\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[new_shipments][departments][]\" data-live-search=\"true\" multiple title=\"";
            // line 827
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Choose the departments"]);
            echo "\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        ";
            // line 829
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["departments"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["department"]) {
                // line 830
                echo "                                                            <option value=\"";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["department"], "id", [], "any", false, false, false, 830), "html", null, true);
                echo "\" ";
                if (twig_in_filter(twig_get_attribute($this->env, $this->source, $context["department"], "id", [], "any", false, false, false, 830), twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 830), "new_shipments", [], "any", false, false, false, 830), "departments", [], "any", false, false, false, 830))) {
                    echo "selected";
                }
                echo ">";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["department"], "name", [], "any", false, false, false, 830), "html", null, true);
                echo "</option>
                                                        ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['department'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 832
            echo "                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_employees\" name=\"responsibility[new_shipments][]\" ";
            // line 836
            if (twig_in_filter(5, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 836), "new_shipments", [], "any", false, false, false, 836))) {
                echo "checked";
            }
            echo " value=\"5\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Employees"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_employees ";
            // line 840
            if (!twig_in_filter(5, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 840), "new_shipments", [], "any", false, false, false, 840))) {
                echo "kt-hidden";
            }
            echo "\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[new_shipments][employees][]\" data-live-search=\"true\" multiple title=\"";
            // line 841
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Choose the employees"]);
            echo "\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        ";
            // line 843
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["employees"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["employee"]) {
                // line 844
                echo "                                                            <option value=\"";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["employee"], "id", [], "any", false, false, false, 844), "html", null, true);
                echo "\" ";
                if (twig_in_filter(twig_get_attribute($this->env, $this->source, $context["employee"], "id", [], "any", false, false, false, 844), twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 844), "new_shipments", [], "any", false, false, false, 844), "employees", [], "any", false, false, false, 844))) {
                    echo "selected";
                }
                echo ">";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["employee"], "name", [], "any", false, false, false, 844), "html", null, true);
                echo "</option>
                                                        ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['employee'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 846
            echo "                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[new_shipments][]\" ";
            // line 850
            if (twig_in_filter(6, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 850), "new_shipments", [], "any", false, false, false, 850))) {
                echo "checked";
            }
            echo " value=\"6\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Sender"]);
            echo " [";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Client"]);
            echo "]
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[new_shipments][]\" ";
            // line 856
            if (twig_in_filter(7, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 856), "new_shipments", [], "any", false, false, false, 856))) {
                echo "checked";
            }
            echo " value=\"7\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Receiver"]);
            echo " [";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Client"]);
            echo "]
                                                        <span></span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class=\"form-group row\">
                                            <label class=\"col-xl-3 col-lg-3 col-form-label\">";
            // line 863
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["New Shipments Note Notifications"]);
            echo "</label>
                                            <div class=\"col-lg-9 col-xl-6\">
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[new_note][]\" ";
            // line 867
            if (twig_in_filter(1, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 867), "new_note", [], "any", false, false, false, 867))) {
                echo "checked";
            }
            echo " value=\"1\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["System Administrators"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[new_note][]\" ";
            // line 873
            if (twig_in_filter(2, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 873), "new_note", [], "any", false, false, false, 873))) {
                echo "checked";
            }
            echo " value=\"2\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Supervisors"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[new_note][]\" ";
            // line 879
            if (twig_in_filter(3, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 879), "new_note", [], "any", false, false, false, 879))) {
                echo "checked";
            }
            echo " value=\"3\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Departments Moderators"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[new_note][]\" ";
            // line 885
            if (twig_in_filter(4, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 885), "new_note", [], "any", false, false, false, 885))) {
                echo "checked";
            }
            echo " value=\"4\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Departments Employees"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_departments ";
            // line 889
            if ((!twig_in_filter(3, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 889), "new_note", [], "any", false, false, false, 889)) && !twig_in_filter(4, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 889), "new_note", [], "any", false, false, false, 889)))) {
                echo "kt-hidden";
            }
            echo "\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[new_note][departments][]\" data-live-search=\"true\" multiple title=\"";
            // line 890
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Choose the departments"]);
            echo "\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        ";
            // line 892
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["departments"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["department"]) {
                // line 893
                echo "                                                            <option value=\"";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["department"], "id", [], "any", false, false, false, 893), "html", null, true);
                echo "\" ";
                if (twig_in_filter(twig_get_attribute($this->env, $this->source, $context["department"], "id", [], "any", false, false, false, 893), twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 893), "new_note", [], "any", false, false, false, 893), "departments", [], "any", false, false, false, 893))) {
                    echo "selected";
                }
                echo ">";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["department"], "name", [], "any", false, false, false, 893), "html", null, true);
                echo "</option>
                                                        ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['department'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 895
            echo "                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_employees\" name=\"responsibility[new_note][]\" ";
            // line 899
            if (twig_in_filter(5, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 899), "new_note", [], "any", false, false, false, 899))) {
                echo "checked";
            }
            echo " value=\"5\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Employees"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_employees ";
            // line 903
            if (!twig_in_filter(5, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 903), "new_note", [], "any", false, false, false, 903))) {
                echo "kt-hidden";
            }
            echo "\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[new_note][employees][]\" data-live-search=\"true\" multiple title=\"";
            // line 904
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Choose the employees"]);
            echo "\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        ";
            // line 906
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["employees"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["employee"]) {
                // line 907
                echo "                                                            <option value=\"";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["employee"], "id", [], "any", false, false, false, 907), "html", null, true);
                echo "\" ";
                if (twig_in_filter(twig_get_attribute($this->env, $this->source, $context["employee"], "id", [], "any", false, false, false, 907), twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 907), "new_note", [], "any", false, false, false, 907), "employees", [], "any", false, false, false, 907))) {
                    echo "selected";
                }
                echo ">";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["employee"], "name", [], "any", false, false, false, 907), "html", null, true);
                echo "</option>
                                                        ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['employee'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 909
            echo "                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[new_note][]\" ";
            // line 913
            if (twig_in_filter(6, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 913), "new_note", [], "any", false, false, false, 913))) {
                echo "checked";
            }
            echo " value=\"6\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Sender"]);
            echo " [";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Client"]);
            echo "]
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[new_note][]\" ";
            // line 919
            if (twig_in_filter(7, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 919), "new_note", [], "any", false, false, false, 919))) {
                echo "checked";
            }
            echo " value=\"7\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Receiver"]);
            echo " [";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Client"]);
            echo "]
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[new_note][]\" ";
            // line 925
            if (twig_in_filter(8, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 925), "new_note", [], "any", false, false, false, 925))) {
                echo "checked";
            }
            echo " value=\"8\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Responsible"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class=\"form-group row\">
                                            <label class=\"col-xl-3 col-lg-3 col-form-label\">";
            // line 932
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Update Shipments Notifications"]);
            echo "</label>
                                            <div class=\"col-lg-9 col-xl-6\">
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[update_shipment][]\" ";
            // line 936
            if (twig_in_filter(1, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 936), "update_shipment", [], "any", false, false, false, 936))) {
                echo "checked";
            }
            echo " value=\"1\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["System Administrators"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[update_shipment][]\" ";
            // line 942
            if (twig_in_filter(2, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 942), "update_shipment", [], "any", false, false, false, 942))) {
                echo "checked";
            }
            echo " value=\"2\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Supervisors"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[update_shipment][]\" ";
            // line 948
            if (twig_in_filter(3, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 948), "update_shipment", [], "any", false, false, false, 948))) {
                echo "checked";
            }
            echo " value=\"3\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Departments Moderators"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[update_shipment][]\" ";
            // line 954
            if (twig_in_filter(4, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 954), "update_shipment", [], "any", false, false, false, 954))) {
                echo "checked";
            }
            echo " value=\"4\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Departments Employees"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_departments ";
            // line 958
            if ((!twig_in_filter(3, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 958), "update_shipment", [], "any", false, false, false, 958)) && !twig_in_filter(4, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 958), "update_shipment", [], "any", false, false, false, 958)))) {
                echo "kt-hidden";
            }
            echo "\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[update_shipment][departments][]\" data-live-search=\"true\" multiple title=\"";
            // line 959
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Choose the departments"]);
            echo "\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        ";
            // line 961
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["departments"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["department"]) {
                // line 962
                echo "                                                            <option value=\"";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["department"], "id", [], "any", false, false, false, 962), "html", null, true);
                echo "\" ";
                if (twig_in_filter(twig_get_attribute($this->env, $this->source, $context["department"], "id", [], "any", false, false, false, 962), twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 962), "update_shipment", [], "any", false, false, false, 962), "departments", [], "any", false, false, false, 962))) {
                    echo "selected";
                }
                echo ">";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["department"], "name", [], "any", false, false, false, 962), "html", null, true);
                echo "</option>
                                                        ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['department'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 964
            echo "                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_employees\" name=\"responsibility[update_shipment][]\" ";
            // line 968
            if (twig_in_filter(5, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 968), "update_shipment", [], "any", false, false, false, 968))) {
                echo "checked";
            }
            echo " value=\"5\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Employees"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_employees ";
            // line 972
            if (!twig_in_filter(5, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 972), "update_shipment", [], "any", false, false, false, 972))) {
                echo "kt-hidden";
            }
            echo "\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[update_shipment][employees][]\" data-live-search=\"true\" multiple title=\"";
            // line 973
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Choose the employees"]);
            echo "\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        ";
            // line 975
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["employees"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["employee"]) {
                // line 976
                echo "                                                            <option value=\"";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["employee"], "id", [], "any", false, false, false, 976), "html", null, true);
                echo "\" ";
                if (twig_in_filter(twig_get_attribute($this->env, $this->source, $context["employee"], "id", [], "any", false, false, false, 976), twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 976), "update_shipment", [], "any", false, false, false, 976), "employees", [], "any", false, false, false, 976))) {
                    echo "selected";
                }
                echo ">";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["employee"], "name", [], "any", false, false, false, 976), "html", null, true);
                echo "</option>
                                                        ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['employee'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 978
            echo "                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[update_shipment][]\" ";
            // line 982
            if (twig_in_filter(6, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 982), "update_shipment", [], "any", false, false, false, 982))) {
                echo "checked";
            }
            echo " value=\"6\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Sender"]);
            echo " [";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Client"]);
            echo "]
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[update_shipment][]\" ";
            // line 988
            if (twig_in_filter(7, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 988), "update_shipment", [], "any", false, false, false, 988))) {
                echo "checked";
            }
            echo " value=\"7\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Receiver"]);
            echo " [";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Client"]);
            echo "]
                                                        <span></span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class=\"form-group row\">
                                            <label class=\"col-xl-3 col-lg-3 col-form-label\">";
            // line 995
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Approved Shipments Notifications"]);
            echo "</label>
                                            <div class=\"col-lg-9 col-xl-6\">
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[approved_shipment][]\" ";
            // line 999
            if (twig_in_filter(1, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 999), "approved_shipment", [], "any", false, false, false, 999))) {
                echo "checked";
            }
            echo " value=\"1\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["System Administrators"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[approved_shipment][]\" ";
            // line 1005
            if (twig_in_filter(2, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1005), "approved_shipment", [], "any", false, false, false, 1005))) {
                echo "checked";
            }
            echo " value=\"2\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Supervisors"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[approved_shipment][]\" ";
            // line 1011
            if (twig_in_filter(3, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1011), "approved_shipment", [], "any", false, false, false, 1011))) {
                echo "checked";
            }
            echo " value=\"3\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Departments Moderators"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[approved_shipment][]\" ";
            // line 1017
            if (twig_in_filter(4, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1017), "approved_shipment", [], "any", false, false, false, 1017))) {
                echo "checked";
            }
            echo " value=\"4\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Departments Employees"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_departments ";
            // line 1021
            if ((!twig_in_filter(3, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1021), "approved_shipment", [], "any", false, false, false, 1021)) && !twig_in_filter(4, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1021), "approved_shipment", [], "any", false, false, false, 1021)))) {
                echo "kt-hidden";
            }
            echo "\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[approved_shipment][departments][]\" data-live-search=\"true\" multiple title=\"";
            // line 1022
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Choose the departments"]);
            echo "\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        ";
            // line 1024
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["departments"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["department"]) {
                // line 1025
                echo "                                                            <option value=\"";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["department"], "id", [], "any", false, false, false, 1025), "html", null, true);
                echo "\" ";
                if (twig_in_filter(twig_get_attribute($this->env, $this->source, $context["department"], "id", [], "any", false, false, false, 1025), twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1025), "approved_shipment", [], "any", false, false, false, 1025), "departments", [], "any", false, false, false, 1025))) {
                    echo "selected";
                }
                echo ">";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["department"], "name", [], "any", false, false, false, 1025), "html", null, true);
                echo "</option>
                                                        ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['department'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 1027
            echo "                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_employees\" name=\"responsibility[approved_shipment][]\" ";
            // line 1031
            if (twig_in_filter(5, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1031), "approved_shipment", [], "any", false, false, false, 1031))) {
                echo "checked";
            }
            echo " value=\"5\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Employees"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_employees ";
            // line 1035
            if (!twig_in_filter(5, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1035), "approved_shipment", [], "any", false, false, false, 1035))) {
                echo "kt-hidden";
            }
            echo "\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[approved_shipment][employees][]\" data-live-search=\"true\" multiple title=\"";
            // line 1036
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Choose the employees"]);
            echo "\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        ";
            // line 1038
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["employees"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["employee"]) {
                // line 1039
                echo "                                                            <option value=\"";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["employee"], "id", [], "any", false, false, false, 1039), "html", null, true);
                echo "\" ";
                if (twig_in_filter(twig_get_attribute($this->env, $this->source, $context["employee"], "id", [], "any", false, false, false, 1039), twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1039), "approved_shipment", [], "any", false, false, false, 1039), "employees", [], "any", false, false, false, 1039))) {
                    echo "selected";
                }
                echo ">";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["employee"], "name", [], "any", false, false, false, 1039), "html", null, true);
                echo "</option>
                                                        ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['employee'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 1041
            echo "                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[approved_shipment][]\" ";
            // line 1045
            if (twig_in_filter(6, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1045), "approved_shipment", [], "any", false, false, false, 1045))) {
                echo "checked";
            }
            echo " value=\"6\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Sender"]);
            echo " [";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Client"]);
            echo "]
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[approved_shipment][]\" ";
            // line 1051
            if (twig_in_filter(7, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1051), "approved_shipment", [], "any", false, false, false, 1051))) {
                echo "checked";
            }
            echo " value=\"7\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Receiver"]);
            echo " [";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Client"]);
            echo "]
                                                        <span></span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class=\"form-group row\">
                                            <label class=\"col-xl-3 col-lg-3 col-form-label\">";
            // line 1058
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Refused Shipments Notifications"]);
            echo "</label>
                                            <div class=\"col-lg-9 col-xl-6\">
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[refused_shipment][]\" ";
            // line 1062
            if (twig_in_filter(1, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1062), "refused_shipment", [], "any", false, false, false, 1062))) {
                echo "checked";
            }
            echo " value=\"1\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["System Administrators"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[refused_shipment][]\" ";
            // line 1068
            if (twig_in_filter(2, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1068), "refused_shipment", [], "any", false, false, false, 1068))) {
                echo "checked";
            }
            echo " value=\"2\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Supervisors"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[refused_shipment][]\" ";
            // line 1074
            if (twig_in_filter(3, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1074), "refused_shipment", [], "any", false, false, false, 1074))) {
                echo "checked";
            }
            echo " value=\"3\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Departments Moderators"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[refused_shipment][]\" ";
            // line 1080
            if (twig_in_filter(4, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1080), "refused_shipment", [], "any", false, false, false, 1080))) {
                echo "checked";
            }
            echo " value=\"4\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Departments Employees"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_departments ";
            // line 1084
            if ((!twig_in_filter(3, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1084), "refused_shipment", [], "any", false, false, false, 1084)) && !twig_in_filter(4, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1084), "refused_shipment", [], "any", false, false, false, 1084)))) {
                echo "kt-hidden";
            }
            echo "\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[refused_shipment][departments][]\" data-live-search=\"true\" multiple title=\"";
            // line 1085
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Choose the departments"]);
            echo "\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        ";
            // line 1087
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["departments"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["department"]) {
                // line 1088
                echo "                                                            <option value=\"";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["department"], "id", [], "any", false, false, false, 1088), "html", null, true);
                echo "\" ";
                if (twig_in_filter(twig_get_attribute($this->env, $this->source, $context["department"], "id", [], "any", false, false, false, 1088), twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1088), "refused_shipment", [], "any", false, false, false, 1088), "departments", [], "any", false, false, false, 1088))) {
                    echo "selected";
                }
                echo ">";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["department"], "name", [], "any", false, false, false, 1088), "html", null, true);
                echo "</option>
                                                        ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['department'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 1090
            echo "                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_employees\" name=\"responsibility[refused_shipment][]\" ";
            // line 1094
            if (twig_in_filter(5, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1094), "refused_shipment", [], "any", false, false, false, 1094))) {
                echo "checked";
            }
            echo " value=\"5\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Employees"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_employees ";
            // line 1098
            if (!twig_in_filter(5, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1098), "refused_shipment", [], "any", false, false, false, 1098))) {
                echo "kt-hidden";
            }
            echo "\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[refused_shipment][employees][]\" data-live-search=\"true\" multiple title=\"";
            // line 1099
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Choose the employees"]);
            echo "\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        ";
            // line 1101
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["employees"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["employee"]) {
                // line 1102
                echo "                                                            <option value=\"";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["employee"], "id", [], "any", false, false, false, 1102), "html", null, true);
                echo "\" ";
                if (twig_in_filter(twig_get_attribute($this->env, $this->source, $context["employee"], "id", [], "any", false, false, false, 1102), twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1102), "refused_shipment", [], "any", false, false, false, 1102), "employees", [], "any", false, false, false, 1102))) {
                    echo "selected";
                }
                echo ">";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["employee"], "name", [], "any", false, false, false, 1102), "html", null, true);
                echo "</option>
                                                        ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['employee'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 1104
            echo "                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[refused_shipment][]\" ";
            // line 1108
            if (twig_in_filter(6, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1108), "refused_shipment", [], "any", false, false, false, 1108))) {
                echo "checked";
            }
            echo " value=\"6\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Sender"]);
            echo " [";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Client"]);
            echo "]
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[refused_shipment][]\" ";
            // line 1114
            if (twig_in_filter(7, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1114), "refused_shipment", [], "any", false, false, false, 1114))) {
                echo "checked";
            }
            echo " value=\"7\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Receiver"]);
            echo " [";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Client"]);
            echo "]
                                                        <span></span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class=\"form-group row\">
                                            <label class=\"col-xl-3 col-lg-3 col-form-label\">";
            // line 1121
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Postponed Shipments Notifications"]);
            echo "</label>
                                            <div class=\"col-lg-9 col-xl-6\">
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[postponed_shipment][]\" ";
            // line 1125
            if (twig_in_filter(1, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1125), "postponed_shipment", [], "any", false, false, false, 1125))) {
                echo "checked";
            }
            echo " value=\"1\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["System Administrators"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[postponed_shipment][]\" ";
            // line 1131
            if (twig_in_filter(2, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1131), "postponed_shipment", [], "any", false, false, false, 1131))) {
                echo "checked";
            }
            echo " value=\"2\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Supervisors"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[postponed_shipment][]\" ";
            // line 1137
            if (twig_in_filter(3, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1137), "postponed_shipment", [], "any", false, false, false, 1137))) {
                echo "checked";
            }
            echo " value=\"3\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Departments Moderators"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[postponed_shipment][]\" ";
            // line 1143
            if (twig_in_filter(4, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1143), "postponed_shipment", [], "any", false, false, false, 1143))) {
                echo "checked";
            }
            echo " value=\"4\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Departments Employees"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_departments ";
            // line 1147
            if ((!twig_in_filter(3, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1147), "postponed_shipment", [], "any", false, false, false, 1147)) && !twig_in_filter(4, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1147), "postponed_shipment", [], "any", false, false, false, 1147)))) {
                echo "kt-hidden";
            }
            echo "\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[postponed_shipment][departments][]\" data-live-search=\"true\" multiple title=\"";
            // line 1148
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Choose the departments"]);
            echo "\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        ";
            // line 1150
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["departments"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["department"]) {
                // line 1151
                echo "                                                            <option value=\"";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["department"], "id", [], "any", false, false, false, 1151), "html", null, true);
                echo "\" ";
                if (twig_in_filter(twig_get_attribute($this->env, $this->source, $context["department"], "id", [], "any", false, false, false, 1151), twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1151), "postponed_shipment", [], "any", false, false, false, 1151), "departments", [], "any", false, false, false, 1151))) {
                    echo "selected";
                }
                echo ">";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["department"], "name", [], "any", false, false, false, 1151), "html", null, true);
                echo "</option>
                                                        ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['department'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 1153
            echo "                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_employees\" name=\"responsibility[postponed_shipment][]\" ";
            // line 1157
            if (twig_in_filter(5, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1157), "postponed_shipment", [], "any", false, false, false, 1157))) {
                echo "checked";
            }
            echo " value=\"5\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Employees"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_employees ";
            // line 1161
            if (!twig_in_filter(5, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1161), "postponed_shipment", [], "any", false, false, false, 1161))) {
                echo "kt-hidden";
            }
            echo "\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[postponed_shipment][employees][]\" data-live-search=\"true\" multiple title=\"";
            // line 1162
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Choose the employees"]);
            echo "\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        ";
            // line 1164
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["employees"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["employee"]) {
                // line 1165
                echo "                                                            <option value=\"";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["employee"], "id", [], "any", false, false, false, 1165), "html", null, true);
                echo "\" ";
                if (twig_in_filter(twig_get_attribute($this->env, $this->source, $context["employee"], "id", [], "any", false, false, false, 1165), twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1165), "postponed_shipment", [], "any", false, false, false, 1165), "employees", [], "any", false, false, false, 1165))) {
                    echo "selected";
                }
                echo ">";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["employee"], "name", [], "any", false, false, false, 1165), "html", null, true);
                echo "</option>
                                                        ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['employee'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 1167
            echo "                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[postponed_shipment][]\" ";
            // line 1171
            if (twig_in_filter(6, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1171), "postponed_shipment", [], "any", false, false, false, 1171))) {
                echo "checked";
            }
            echo " value=\"6\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Sender"]);
            echo " [";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Client"]);
            echo "]
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[postponed_shipment][]\" ";
            // line 1177
            if (twig_in_filter(7, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1177), "postponed_shipment", [], "any", false, false, false, 1177))) {
                echo "checked";
            }
            echo " value=\"7\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Receiver"]);
            echo " [";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Client"]);
            echo "]
                                                        <span></span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class=\"form-group row\">
                                            <label class=\"col-xl-3 col-lg-3 col-form-label\">";
            // line 1184
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Transfered Shipments Notifications"]);
            echo "</label>
                                            <div class=\"col-lg-9 col-xl-6\">
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[transfered_shipment][]\" ";
            // line 1188
            if (twig_in_filter(1, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1188), "transfered_shipment", [], "any", false, false, false, 1188))) {
                echo "checked";
            }
            echo " value=\"1\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["System Administrators"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[transfered_shipment][]\" ";
            // line 1194
            if (twig_in_filter(2, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1194), "transfered_shipment", [], "any", false, false, false, 1194))) {
                echo "checked";
            }
            echo " value=\"2\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Supervisors"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[transfered_shipment][]\" ";
            // line 1200
            if (twig_in_filter(3, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1200), "transfered_shipment", [], "any", false, false, false, 1200))) {
                echo "checked";
            }
            echo " value=\"3\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Departments Moderators"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[transfered_shipment][]\" ";
            // line 1206
            if (twig_in_filter(4, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1206), "transfered_shipment", [], "any", false, false, false, 1206))) {
                echo "checked";
            }
            echo " value=\"4\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Departments Employees"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_departments ";
            // line 1210
            if ((!twig_in_filter(3, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1210), "transfered_shipment", [], "any", false, false, false, 1210)) && !twig_in_filter(4, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1210), "transfered_shipment", [], "any", false, false, false, 1210)))) {
                echo "kt-hidden";
            }
            echo "\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[transfered_shipment][departments][]\" data-live-search=\"true\" multiple title=\"";
            // line 1211
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Choose the departments"]);
            echo "\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        ";
            // line 1213
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["departments"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["department"]) {
                // line 1214
                echo "                                                            <option value=\"";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["department"], "id", [], "any", false, false, false, 1214), "html", null, true);
                echo "\" ";
                if (twig_in_filter(twig_get_attribute($this->env, $this->source, $context["department"], "id", [], "any", false, false, false, 1214), twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1214), "transfered_shipment", [], "any", false, false, false, 1214), "departments", [], "any", false, false, false, 1214))) {
                    echo "selected";
                }
                echo ">";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["department"], "name", [], "any", false, false, false, 1214), "html", null, true);
                echo "</option>
                                                        ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['department'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 1216
            echo "                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_employees\" name=\"responsibility[transfered_shipment][]\" ";
            // line 1220
            if (twig_in_filter(5, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1220), "transfered_shipment", [], "any", false, false, false, 1220))) {
                echo "checked";
            }
            echo " value=\"5\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Employees"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_employees ";
            // line 1224
            if (!twig_in_filter(5, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1224), "transfered_shipment", [], "any", false, false, false, 1224))) {
                echo "kt-hidden";
            }
            echo "\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[transfered_shipment][employees][]\" data-live-search=\"true\" multiple title=\"";
            // line 1225
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Choose the employees"]);
            echo "\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        ";
            // line 1227
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["employees"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["employee"]) {
                // line 1228
                echo "                                                            <option value=\"";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["employee"], "id", [], "any", false, false, false, 1228), "html", null, true);
                echo "\" ";
                if (twig_in_filter(twig_get_attribute($this->env, $this->source, $context["employee"], "id", [], "any", false, false, false, 1228), twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1228), "transfered_shipment", [], "any", false, false, false, 1228), "employees", [], "any", false, false, false, 1228))) {
                    echo "selected";
                }
                echo ">";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["employee"], "name", [], "any", false, false, false, 1228), "html", null, true);
                echo "</option>
                                                        ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['employee'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 1230
            echo "                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[transfered_shipment][]\" ";
            // line 1234
            if (twig_in_filter(6, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1234), "transfered_shipment", [], "any", false, false, false, 1234))) {
                echo "checked";
            }
            echo " value=\"6\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Sender"]);
            echo " [";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Client"]);
            echo "]
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[transfered_shipment][]\" ";
            // line 1240
            if (twig_in_filter(7, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1240), "transfered_shipment", [], "any", false, false, false, 1240))) {
                echo "checked";
            }
            echo " value=\"7\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Receiver"]);
            echo " [";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Client"]);
            echo "]
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[transfered_shipment][]\" ";
            // line 1246
            if (twig_in_filter(8, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1246), "transfered_shipment", [], "any", false, false, false, 1246))) {
                echo "checked";
            }
            echo " value=\"8\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Responsible"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class=\"form-group row\">
                                            <label class=\"col-xl-3 col-lg-3 col-form-label\">";
            // line 1253
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Assigned Shipments Notifications"]);
            echo "</label>
                                            <div class=\"col-lg-9 col-xl-6\">
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[assign_shipment][]\" ";
            // line 1257
            if (twig_in_filter(1, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1257), "assign_shipment", [], "any", false, false, false, 1257))) {
                echo "checked";
            }
            echo " value=\"1\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["System Administrators"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[assign_shipment][]\" ";
            // line 1263
            if (twig_in_filter(2, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1263), "assign_shipment", [], "any", false, false, false, 1263))) {
                echo "checked";
            }
            echo " value=\"2\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Supervisors"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[assign_shipment][]\" ";
            // line 1269
            if (twig_in_filter(3, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1269), "assign_shipment", [], "any", false, false, false, 1269))) {
                echo "checked";
            }
            echo " value=\"3\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Departments Moderators"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[assign_shipment][]\" ";
            // line 1275
            if (twig_in_filter(4, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1275), "assign_shipment", [], "any", false, false, false, 1275))) {
                echo "checked";
            }
            echo " value=\"4\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Departments Employees"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_departments ";
            // line 1279
            if ((!twig_in_filter(3, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1279), "assign_shipment", [], "any", false, false, false, 1279)) && !twig_in_filter(4, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1279), "assign_shipment", [], "any", false, false, false, 1279)))) {
                echo "kt-hidden";
            }
            echo "\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[assign_shipment][departments][]\" data-live-search=\"true\" multiple title=\"";
            // line 1280
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Choose the departments"]);
            echo "\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        ";
            // line 1282
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["departments"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["department"]) {
                // line 1283
                echo "                                                            <option value=\"";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["department"], "id", [], "any", false, false, false, 1283), "html", null, true);
                echo "\" ";
                if (twig_in_filter(twig_get_attribute($this->env, $this->source, $context["department"], "id", [], "any", false, false, false, 1283), twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1283), "assign_shipment", [], "any", false, false, false, 1283), "departments", [], "any", false, false, false, 1283))) {
                    echo "selected";
                }
                echo ">";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["department"], "name", [], "any", false, false, false, 1283), "html", null, true);
                echo "</option>
                                                        ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['department'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 1285
            echo "                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_employees\" name=\"responsibility[assign_shipment][]\" ";
            // line 1289
            if (twig_in_filter(5, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1289), "assign_shipment", [], "any", false, false, false, 1289))) {
                echo "checked";
            }
            echo " value=\"5\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Employees"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_employees ";
            // line 1293
            if (!twig_in_filter(5, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1293), "assign_shipment", [], "any", false, false, false, 1293))) {
                echo "kt-hidden";
            }
            echo "\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[assign_shipment][employees][]\" data-live-search=\"true\" multiple title=\"";
            // line 1294
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Choose the employees"]);
            echo "\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        ";
            // line 1296
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["employees"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["employee"]) {
                // line 1297
                echo "                                                            <option value=\"";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["employee"], "id", [], "any", false, false, false, 1297), "html", null, true);
                echo "\" ";
                if (twig_in_filter(twig_get_attribute($this->env, $this->source, $context["employee"], "id", [], "any", false, false, false, 1297), twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1297), "assign_shipment", [], "any", false, false, false, 1297), "employees", [], "any", false, false, false, 1297))) {
                    echo "selected";
                }
                echo ">";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["employee"], "name", [], "any", false, false, false, 1297), "html", null, true);
                echo "</option>
                                                        ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['employee'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 1299
            echo "                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[assign_shipment][]\" ";
            // line 1303
            if (twig_in_filter(6, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1303), "assign_shipment", [], "any", false, false, false, 1303))) {
                echo "checked";
            }
            echo " value=\"6\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Sender"]);
            echo " [";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Client"]);
            echo "]
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[assign_shipment][]\" ";
            // line 1309
            if (twig_in_filter(7, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1309), "assign_shipment", [], "any", false, false, false, 1309))) {
                echo "checked";
            }
            echo " value=\"7\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Receiver"]);
            echo " [";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Client"]);
            echo "]
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[assign_shipment][]\" ";
            // line 1315
            if (twig_in_filter(8, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1315), "assign_shipment", [], "any", false, false, false, 1315))) {
                echo "checked";
            }
            echo " value=\"8\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Responsible"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class=\"form-group row\">
                                            <label class=\"col-xl-3 col-lg-3 col-form-label\">";
            // line 1322
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Driver Received Notifications"]);
            echo "</label>
                                            <div class=\"col-lg-9 col-xl-6\">
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[driver_received][]\" ";
            // line 1326
            if (twig_in_filter(1, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1326), "driver_received", [], "any", false, false, false, 1326))) {
                echo "checked";
            }
            echo " value=\"1\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["System Administrators"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[driver_received][]\" ";
            // line 1332
            if (twig_in_filter(2, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1332), "driver_received", [], "any", false, false, false, 1332))) {
                echo "checked";
            }
            echo " value=\"2\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Supervisors"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[driver_received][]\" ";
            // line 1338
            if (twig_in_filter(3, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1338), "driver_received", [], "any", false, false, false, 1338))) {
                echo "checked";
            }
            echo " value=\"3\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Departments Moderators"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[driver_received][]\" ";
            // line 1344
            if (twig_in_filter(4, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1344), "driver_received", [], "any", false, false, false, 1344))) {
                echo "checked";
            }
            echo " value=\"4\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Departments Employees"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_departments ";
            // line 1348
            if ((!twig_in_filter(3, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1348), "driver_received", [], "any", false, false, false, 1348)) && !twig_in_filter(4, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1348), "driver_received", [], "any", false, false, false, 1348)))) {
                echo "kt-hidden";
            }
            echo "\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[driver_received][departments][]\" data-live-search=\"true\" multiple title=\"";
            // line 1349
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Choose the departments"]);
            echo "\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        ";
            // line 1351
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["departments"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["department"]) {
                // line 1352
                echo "                                                            <option value=\"";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["department"], "id", [], "any", false, false, false, 1352), "html", null, true);
                echo "\" ";
                if (twig_in_filter(twig_get_attribute($this->env, $this->source, $context["department"], "id", [], "any", false, false, false, 1352), twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1352), "driver_received", [], "any", false, false, false, 1352), "departments", [], "any", false, false, false, 1352))) {
                    echo "selected";
                }
                echo ">";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["department"], "name", [], "any", false, false, false, 1352), "html", null, true);
                echo "</option>
                                                        ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['department'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 1354
            echo "                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_employees\" name=\"responsibility[driver_received][]\" ";
            // line 1358
            if (twig_in_filter(5, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1358), "driver_received", [], "any", false, false, false, 1358))) {
                echo "checked";
            }
            echo " value=\"5\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Employees"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_employees ";
            // line 1362
            if (!twig_in_filter(5, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1362), "driver_received", [], "any", false, false, false, 1362))) {
                echo "kt-hidden";
            }
            echo "\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[driver_received][employees][]\" data-live-search=\"true\" multiple title=\"";
            // line 1363
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Choose the employees"]);
            echo "\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        ";
            // line 1365
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["employees"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["employee"]) {
                // line 1366
                echo "                                                            <option value=\"";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["employee"], "id", [], "any", false, false, false, 1366), "html", null, true);
                echo "\" ";
                if (twig_in_filter(twig_get_attribute($this->env, $this->source, $context["employee"], "id", [], "any", false, false, false, 1366), twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1366), "assign_shipment", [], "any", false, false, false, 1366), "employees", [], "any", false, false, false, 1366))) {
                    echo "selected";
                }
                echo ">";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["employee"], "name", [], "any", false, false, false, 1366), "html", null, true);
                echo "</option>
                                                        ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['employee'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 1368
            echo "                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[driver_received][]\" ";
            // line 1372
            if (twig_in_filter(6, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1372), "driver_received", [], "any", false, false, false, 1372))) {
                echo "checked";
            }
            echo " value=\"6\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Sender"]);
            echo " [";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Client"]);
            echo "]
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[driver_received][]\" ";
            // line 1378
            if (twig_in_filter(7, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1378), "driver_received", [], "any", false, false, false, 1378))) {
                echo "checked";
            }
            echo " value=\"7\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Receiver"]);
            echo " [";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Client"]);
            echo "]
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[driver_received][]\" ";
            // line 1384
            if (twig_in_filter(8, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1384), "driver_received", [], "any", false, false, false, 1384))) {
                echo "checked";
            }
            echo " value=\"8\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Responsible"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class=\"form-group row\">
                                            <label class=\"col-xl-3 col-lg-3 col-form-label\">";
            // line 1391
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Discards Request Notifications"]);
            echo "</label>
                                            <div class=\"col-lg-9 col-xl-6\">
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[discards_request][]\" ";
            // line 1395
            if (twig_in_filter(1, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1395), "discards_request", [], "any", false, false, false, 1395))) {
                echo "checked";
            }
            echo " value=\"1\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["System Administrators"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[discards_request][]\" ";
            // line 1401
            if (twig_in_filter(2, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1401), "discards_request", [], "any", false, false, false, 1401))) {
                echo "checked";
            }
            echo " value=\"2\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Supervisors"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[discards_request][]\" ";
            // line 1407
            if (twig_in_filter(3, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1407), "discards_request", [], "any", false, false, false, 1407))) {
                echo "checked";
            }
            echo " value=\"3\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Departments Moderators"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[discards_request][]\" ";
            // line 1413
            if (twig_in_filter(4, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1413), "discards_request", [], "any", false, false, false, 1413))) {
                echo "checked";
            }
            echo " value=\"4\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Departments Employees"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_departments ";
            // line 1417
            if ((!twig_in_filter(3, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1417), "discards_request", [], "any", false, false, false, 1417)) && !twig_in_filter(4, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1417), "discards_request", [], "any", false, false, false, 1417)))) {
                echo "kt-hidden";
            }
            echo "\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[discards_request][departments][]\" data-live-search=\"true\" multiple title=\"";
            // line 1418
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Choose the departments"]);
            echo "\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        ";
            // line 1420
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["departments"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["department"]) {
                // line 1421
                echo "                                                            <option value=\"";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["department"], "id", [], "any", false, false, false, 1421), "html", null, true);
                echo "\" ";
                if (twig_in_filter(twig_get_attribute($this->env, $this->source, $context["department"], "id", [], "any", false, false, false, 1421), twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1421), "discards_request", [], "any", false, false, false, 1421), "departments", [], "any", false, false, false, 1421))) {
                    echo "selected";
                }
                echo ">";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["department"], "name", [], "any", false, false, false, 1421), "html", null, true);
                echo "</option>
                                                        ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['department'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 1423
            echo "                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_employees\" name=\"responsibility[discards_request][]\" ";
            // line 1427
            if (twig_in_filter(5, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1427), "discards_request", [], "any", false, false, false, 1427))) {
                echo "checked";
            }
            echo " value=\"5\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Employees"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_employees ";
            // line 1431
            if (!twig_in_filter(5, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1431), "discards_request", [], "any", false, false, false, 1431))) {
                echo "kt-hidden";
            }
            echo "\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[discards_request][employees][]\" data-live-search=\"true\" multiple title=\"";
            // line 1432
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Choose the employees"]);
            echo "\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        ";
            // line 1434
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["employees"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["employee"]) {
                // line 1435
                echo "                                                            <option value=\"";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["employee"], "id", [], "any", false, false, false, 1435), "html", null, true);
                echo "\" ";
                if (twig_in_filter(twig_get_attribute($this->env, $this->source, $context["employee"], "id", [], "any", false, false, false, 1435), twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1435), "assign_shipment", [], "any", false, false, false, 1435), "employees", [], "any", false, false, false, 1435))) {
                    echo "selected";
                }
                echo ">";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["employee"], "name", [], "any", false, false, false, 1435), "html", null, true);
                echo "</option>
                                                        ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['employee'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 1437
            echo "                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[discards_request][]\" ";
            // line 1441
            if (twig_in_filter(6, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1441), "discards_request", [], "any", false, false, false, 1441))) {
                echo "checked";
            }
            echo " value=\"6\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Sender"]);
            echo " [";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Client"]);
            echo "]
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[discards_request][]\" ";
            // line 1447
            if (twig_in_filter(7, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1447), "discards_request", [], "any", false, false, false, 1447))) {
                echo "checked";
            }
            echo " value=\"7\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Receiver"]);
            echo " [";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Client"]);
            echo "]
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[discards_request][]\" ";
            // line 1453
            if (twig_in_filter(8, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1453), "discards_request", [], "any", false, false, false, 1453))) {
                echo "checked";
            }
            echo " value=\"8\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Responsible"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class=\"form-group row\">
                                            <label class=\"col-xl-3 col-lg-3 col-form-label\">";
            // line 1460
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Received Notifications"]);
            echo "</label>
                                            <div class=\"col-lg-9 col-xl-6\">
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[received][]\" ";
            // line 1464
            if (twig_in_filter(1, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1464), "received", [], "any", false, false, false, 1464))) {
                echo "checked";
            }
            echo " value=\"1\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["System Administrators"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[received][]\" ";
            // line 1470
            if (twig_in_filter(2, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1470), "received", [], "any", false, false, false, 1470))) {
                echo "checked";
            }
            echo " value=\"2\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Supervisors"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[received][]\" ";
            // line 1476
            if (twig_in_filter(3, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1476), "received", [], "any", false, false, false, 1476))) {
                echo "checked";
            }
            echo " value=\"3\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Departments Moderators"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[received][]\" ";
            // line 1482
            if (twig_in_filter(4, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1482), "received", [], "any", false, false, false, 1482))) {
                echo "checked";
            }
            echo " value=\"4\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Departments Employees"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_departments ";
            // line 1486
            if ((!twig_in_filter(3, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1486), "received", [], "any", false, false, false, 1486)) && !twig_in_filter(4, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1486), "received", [], "any", false, false, false, 1486)))) {
                echo "kt-hidden";
            }
            echo "\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[received][departments][]\" data-live-search=\"true\" multiple title=\"";
            // line 1487
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Choose the departments"]);
            echo "\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        ";
            // line 1489
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["departments"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["department"]) {
                // line 1490
                echo "                                                            <option value=\"";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["department"], "id", [], "any", false, false, false, 1490), "html", null, true);
                echo "\" ";
                if (twig_in_filter(twig_get_attribute($this->env, $this->source, $context["department"], "id", [], "any", false, false, false, 1490), twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1490), "received", [], "any", false, false, false, 1490), "departments", [], "any", false, false, false, 1490))) {
                    echo "selected";
                }
                echo ">";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["department"], "name", [], "any", false, false, false, 1490), "html", null, true);
                echo "</option>
                                                        ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['department'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 1492
            echo "                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_employees\" name=\"responsibility[received][]\" ";
            // line 1496
            if (twig_in_filter(5, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1496), "received", [], "any", false, false, false, 1496))) {
                echo "checked";
            }
            echo " value=\"5\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Employees"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_employees ";
            // line 1500
            if (!twig_in_filter(5, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1500), "received", [], "any", false, false, false, 1500))) {
                echo "kt-hidden";
            }
            echo "\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[received][employees][]\" data-live-search=\"true\" multiple title=\"";
            // line 1501
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Choose the employees"]);
            echo "\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        ";
            // line 1503
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["employees"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["employee"]) {
                // line 1504
                echo "                                                            <option value=\"";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["employee"], "id", [], "any", false, false, false, 1504), "html", null, true);
                echo "\" ";
                if (twig_in_filter(twig_get_attribute($this->env, $this->source, $context["employee"], "id", [], "any", false, false, false, 1504), twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1504), "assign_shipment", [], "any", false, false, false, 1504), "employees", [], "any", false, false, false, 1504))) {
                    echo "selected";
                }
                echo ">";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["employee"], "name", [], "any", false, false, false, 1504), "html", null, true);
                echo "</option>
                                                        ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['employee'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 1506
            echo "                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[received][]\" ";
            // line 1510
            if (twig_in_filter(6, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1510), "received", [], "any", false, false, false, 1510))) {
                echo "checked";
            }
            echo " value=\"6\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Sender"]);
            echo " [";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Client"]);
            echo "]
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[received][]\" ";
            // line 1516
            if (twig_in_filter(7, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1516), "received", [], "any", false, false, false, 1516))) {
                echo "checked";
            }
            echo " value=\"7\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Receiver"]);
            echo " [";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Client"]);
            echo "]
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[received][]\" ";
            // line 1522
            if (twig_in_filter(8, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1522), "received", [], "any", false, false, false, 1522))) {
                echo "checked";
            }
            echo " value=\"8\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Responsible"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class=\"form-group row\">
                                            <label class=\"col-xl-3 col-lg-3 col-form-label\">";
            // line 1529
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Manifest Notifications"]);
            echo "</label>
                                            <div class=\"col-lg-9 col-xl-6\">
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[manifest_assigned][]\" ";
            // line 1533
            if (twig_in_filter(1, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1533), "manifest_assigned", [], "any", false, false, false, 1533))) {
                echo "checked";
            }
            echo " value=\"1\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["System Administrators"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[manifest_assigned][]\" ";
            // line 1539
            if (twig_in_filter(2, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1539), "manifest_assigned", [], "any", false, false, false, 1539))) {
                echo "checked";
            }
            echo " value=\"2\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Supervisors"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[manifest_assigned][]\" ";
            // line 1545
            if (twig_in_filter(3, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1545), "manifest_assigned", [], "any", false, false, false, 1545))) {
                echo "checked";
            }
            echo " value=\"3\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Departments Moderators"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[manifest_assigned][]\" ";
            // line 1551
            if (twig_in_filter(4, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1551), "manifest_assigned", [], "any", false, false, false, 1551))) {
                echo "checked";
            }
            echo " value=\"4\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Departments Employees"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_departments ";
            // line 1555
            if ((!twig_in_filter(3, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1555), "manifest_assigned", [], "any", false, false, false, 1555)) && !twig_in_filter(4, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1555), "manifest_assigned", [], "any", false, false, false, 1555)))) {
                echo "kt-hidden";
            }
            echo "\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[manifest_assigned][departments][]\" data-live-search=\"true\" multiple title=\"";
            // line 1556
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Choose the departments"]);
            echo "\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        ";
            // line 1558
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["departments"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["department"]) {
                // line 1559
                echo "                                                            <option value=\"";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["department"], "id", [], "any", false, false, false, 1559), "html", null, true);
                echo "\" ";
                if (twig_in_filter(twig_get_attribute($this->env, $this->source, $context["department"], "id", [], "any", false, false, false, 1559), twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1559), "manifest_assigned", [], "any", false, false, false, 1559), "departments", [], "any", false, false, false, 1559))) {
                    echo "selected";
                }
                echo ">";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["department"], "name", [], "any", false, false, false, 1559), "html", null, true);
                echo "</option>
                                                        ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['department'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 1561
            echo "                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_employees\" name=\"responsibility[manifest_assigned][]\" ";
            // line 1565
            if (twig_in_filter(5, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1565), "manifest_assigned", [], "any", false, false, false, 1565))) {
                echo "checked";
            }
            echo " value=\"5\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Employees"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_employees ";
            // line 1569
            if (!twig_in_filter(5, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1569), "manifest_assigned", [], "any", false, false, false, 1569))) {
                echo "kt-hidden";
            }
            echo "\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[manifest_assigned][employees][]\" data-live-search=\"true\" multiple title=\"";
            // line 1570
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Choose the employees"]);
            echo "\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        ";
            // line 1572
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["employees"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["employee"]) {
                // line 1573
                echo "                                                            <option value=\"";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["employee"], "id", [], "any", false, false, false, 1573), "html", null, true);
                echo "\" ";
                if (twig_in_filter(twig_get_attribute($this->env, $this->source, $context["employee"], "id", [], "any", false, false, false, 1573), twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1573), "assign_shipment", [], "any", false, false, false, 1573), "employees", [], "any", false, false, false, 1573))) {
                    echo "selected";
                }
                echo ">";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["employee"], "name", [], "any", false, false, false, 1573), "html", null, true);
                echo "</option>
                                                        ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['employee'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 1575
            echo "                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[manifest_assigned][]\" ";
            // line 1579
            if (twig_in_filter(6, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1579), "manifest_assigned", [], "any", false, false, false, 1579))) {
                echo "checked";
            }
            echo " value=\"6\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Sender"]);
            echo " [";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Client"]);
            echo "]
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[manifest_assigned][]\" ";
            // line 1585
            if (twig_in_filter(7, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1585), "manifest_assigned", [], "any", false, false, false, 1585))) {
                echo "checked";
            }
            echo " value=\"7\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Receiver"]);
            echo " [";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Client"]);
            echo "]
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[manifest_assigned][]\" ";
            // line 1591
            if (twig_in_filter(8, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1591), "manifest_assigned", [], "any", false, false, false, 1591))) {
                echo "checked";
            }
            echo " value=\"8\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Responsible"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class=\"form-group row\">
                                            <label class=\"col-xl-3 col-lg-3 col-form-label\">";
            // line 1598
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Saved in stock Notifications"]);
            echo "</label>
                                            <div class=\"col-lg-9 col-xl-6\">
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[stock_saved][]\" ";
            // line 1602
            if (twig_in_filter(1, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1602), "stock_saved", [], "any", false, false, false, 1602))) {
                echo "checked";
            }
            echo " value=\"1\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["System Administrators"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[stock_saved][]\" ";
            // line 1608
            if (twig_in_filter(2, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1608), "stock_saved", [], "any", false, false, false, 1608))) {
                echo "checked";
            }
            echo " value=\"2\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Supervisors"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[stock_saved][]\" ";
            // line 1614
            if (twig_in_filter(3, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1614), "stock_saved", [], "any", false, false, false, 1614))) {
                echo "checked";
            }
            echo " value=\"3\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Departments Moderators"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[stock_saved][]\" ";
            // line 1620
            if (twig_in_filter(4, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1620), "stock_saved", [], "any", false, false, false, 1620))) {
                echo "checked";
            }
            echo " value=\"4\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Departments Employees"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_departments ";
            // line 1624
            if ((!twig_in_filter(3, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1624), "stock_saved", [], "any", false, false, false, 1624)) && !twig_in_filter(4, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1624), "stock_saved", [], "any", false, false, false, 1624)))) {
                echo "kt-hidden";
            }
            echo "\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[stock_saved][departments][]\" data-live-search=\"true\" multiple title=\"";
            // line 1625
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Choose the departments"]);
            echo "\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        ";
            // line 1627
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["departments"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["department"]) {
                // line 1628
                echo "                                                            <option value=\"";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["department"], "id", [], "any", false, false, false, 1628), "html", null, true);
                echo "\" ";
                if (twig_in_filter(twig_get_attribute($this->env, $this->source, $context["department"], "id", [], "any", false, false, false, 1628), twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1628), "stock_saved", [], "any", false, false, false, 1628), "departments", [], "any", false, false, false, 1628))) {
                    echo "selected";
                }
                echo ">";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["department"], "name", [], "any", false, false, false, 1628), "html", null, true);
                echo "</option>
                                                        ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['department'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 1630
            echo "                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_employees\" name=\"responsibility[stock_saved][]\" ";
            // line 1634
            if (twig_in_filter(5, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1634), "stock_saved", [], "any", false, false, false, 1634))) {
                echo "checked";
            }
            echo " value=\"5\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Employees"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_employees ";
            // line 1638
            if (!twig_in_filter(5, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1638), "stock_saved", [], "any", false, false, false, 1638))) {
                echo "kt-hidden";
            }
            echo "\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[stock_saved][employees][]\" data-live-search=\"true\" multiple title=\"";
            // line 1639
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Choose the employees"]);
            echo "\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        ";
            // line 1641
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["employees"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["employee"]) {
                // line 1642
                echo "                                                            <option value=\"";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["employee"], "id", [], "any", false, false, false, 1642), "html", null, true);
                echo "\" ";
                if (twig_in_filter(twig_get_attribute($this->env, $this->source, $context["employee"], "id", [], "any", false, false, false, 1642), twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1642), "assign_shipment", [], "any", false, false, false, 1642), "employees", [], "any", false, false, false, 1642))) {
                    echo "selected";
                }
                echo ">";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["employee"], "name", [], "any", false, false, false, 1642), "html", null, true);
                echo "</option>
                                                        ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['employee'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 1644
            echo "                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[stock_saved][]\" ";
            // line 1648
            if (twig_in_filter(6, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1648), "stock_saved", [], "any", false, false, false, 1648))) {
                echo "checked";
            }
            echo " value=\"6\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Sender"]);
            echo " [";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Client"]);
            echo "]
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[stock_saved][]\" ";
            // line 1654
            if (twig_in_filter(7, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1654), "stock_saved", [], "any", false, false, false, 1654))) {
                echo "checked";
            }
            echo " value=\"7\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Receiver"]);
            echo " [";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Client"]);
            echo "]
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[stock_saved][]\" ";
            // line 1660
            if (twig_in_filter(8, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1660), "stock_saved", [], "any", false, false, false, 1660))) {
                echo "checked";
            }
            echo " value=\"8\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Responsible"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class=\"form-group row\">
                                            <label class=\"col-xl-3 col-lg-3 col-form-label\">";
            // line 1667
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Returned Notifications"]);
            echo "</label>
                                            <div class=\"col-lg-9 col-xl-6\">
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[returned][]\" ";
            // line 1671
            if (twig_in_filter(1, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1671), "returned", [], "any", false, false, false, 1671))) {
                echo "checked";
            }
            echo " value=\"1\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["System Administrators"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[returned][]\" ";
            // line 1677
            if (twig_in_filter(2, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1677), "returned", [], "any", false, false, false, 1677))) {
                echo "checked";
            }
            echo " value=\"2\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Supervisors"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[returned][]\" ";
            // line 1683
            if (twig_in_filter(3, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1683), "returned", [], "any", false, false, false, 1683))) {
                echo "checked";
            }
            echo " value=\"3\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Departments Moderators"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[returned][]\" ";
            // line 1689
            if (twig_in_filter(4, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1689), "returned", [], "any", false, false, false, 1689))) {
                echo "checked";
            }
            echo " value=\"4\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Departments Employees"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_departments ";
            // line 1693
            if ((!twig_in_filter(3, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1693), "returned", [], "any", false, false, false, 1693)) && !twig_in_filter(4, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1693), "returned", [], "any", false, false, false, 1693)))) {
                echo "kt-hidden";
            }
            echo "\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[returned][departments][]\" data-live-search=\"true\" multiple title=\"";
            // line 1694
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Choose the departments"]);
            echo "\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        ";
            // line 1696
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["departments"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["department"]) {
                // line 1697
                echo "                                                            <option value=\"";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["department"], "id", [], "any", false, false, false, 1697), "html", null, true);
                echo "\" ";
                if (twig_in_filter(twig_get_attribute($this->env, $this->source, $context["department"], "id", [], "any", false, false, false, 1697), twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1697), "returned", [], "any", false, false, false, 1697), "departments", [], "any", false, false, false, 1697))) {
                    echo "selected";
                }
                echo ">";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["department"], "name", [], "any", false, false, false, 1697), "html", null, true);
                echo "</option>
                                                        ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['department'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 1699
            echo "                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_employees\" name=\"responsibility[returned][]\" ";
            // line 1703
            if (twig_in_filter(5, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1703), "returned", [], "any", false, false, false, 1703))) {
                echo "checked";
            }
            echo " value=\"5\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Employees"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_employees ";
            // line 1707
            if (!twig_in_filter(5, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1707), "returned", [], "any", false, false, false, 1707))) {
                echo "kt-hidden";
            }
            echo "\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[returned][employees][]\" data-live-search=\"true\" multiple title=\"";
            // line 1708
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Choose the employees"]);
            echo "\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        ";
            // line 1710
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["employees"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["employee"]) {
                // line 1711
                echo "                                                            <option value=\"";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["employee"], "id", [], "any", false, false, false, 1711), "html", null, true);
                echo "\" ";
                if (twig_in_filter(twig_get_attribute($this->env, $this->source, $context["employee"], "id", [], "any", false, false, false, 1711), twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1711), "assign_shipment", [], "any", false, false, false, 1711), "employees", [], "any", false, false, false, 1711))) {
                    echo "selected";
                }
                echo ">";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["employee"], "name", [], "any", false, false, false, 1711), "html", null, true);
                echo "</option>
                                                        ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['employee'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 1713
            echo "                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[returned][]\" ";
            // line 1717
            if (twig_in_filter(6, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1717), "returned", [], "any", false, false, false, 1717))) {
                echo "checked";
            }
            echo " value=\"6\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Sender"]);
            echo " [";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Client"]);
            echo "]
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[returned][]\" ";
            // line 1723
            if (twig_in_filter(7, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1723), "returned", [], "any", false, false, false, 1723))) {
                echo "checked";
            }
            echo " value=\"7\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Receiver"]);
            echo " [";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Client"]);
            echo "]
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[returned][]\" ";
            // line 1729
            if (twig_in_filter(8, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1729), "returned", [], "any", false, false, false, 1729))) {
                echo "checked";
            }
            echo " value=\"8\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Responsible"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class=\"form-group row\">
                                            <label class=\"col-xl-3 col-lg-3 col-form-label\">";
            // line 1736
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Delivered Notifications"]);
            echo "</label>
                                            <div class=\"col-lg-9 col-xl-6\">
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[delivered][]\" ";
            // line 1740
            if (twig_in_filter(1, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1740), "delivered", [], "any", false, false, false, 1740))) {
                echo "checked";
            }
            echo " value=\"1\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["System Administrators"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[delivered][]\" ";
            // line 1746
            if (twig_in_filter(2, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1746), "delivered", [], "any", false, false, false, 1746))) {
                echo "checked";
            }
            echo " value=\"2\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Supervisors"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[delivered][]\" ";
            // line 1752
            if (twig_in_filter(3, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1752), "delivered", [], "any", false, false, false, 1752))) {
                echo "checked";
            }
            echo " value=\"3\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Departments Moderators"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[delivered][]\" ";
            // line 1758
            if (twig_in_filter(4, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1758), "delivered", [], "any", false, false, false, 1758))) {
                echo "checked";
            }
            echo " value=\"4\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Departments Employees"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_departments ";
            // line 1762
            if ((!twig_in_filter(3, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1762), "delivered", [], "any", false, false, false, 1762)) && !twig_in_filter(4, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1762), "delivered", [], "any", false, false, false, 1762)))) {
                echo "kt-hidden";
            }
            echo "\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[delivered][departments][]\" data-live-search=\"true\" multiple title=\"";
            // line 1763
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Choose the departments"]);
            echo "\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        ";
            // line 1765
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["departments"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["department"]) {
                // line 1766
                echo "                                                            <option value=\"";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["department"], "id", [], "any", false, false, false, 1766), "html", null, true);
                echo "\" ";
                if (twig_in_filter(twig_get_attribute($this->env, $this->source, $context["department"], "id", [], "any", false, false, false, 1766), twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1766), "delivered", [], "any", false, false, false, 1766), "departments", [], "any", false, false, false, 1766))) {
                    echo "selected";
                }
                echo ">";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["department"], "name", [], "any", false, false, false, 1766), "html", null, true);
                echo "</option>
                                                        ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['department'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 1768
            echo "                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_employees\" name=\"responsibility[delivered][]\" ";
            // line 1772
            if (twig_in_filter(5, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1772), "delivered", [], "any", false, false, false, 1772))) {
                echo "checked";
            }
            echo " value=\"5\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Employees"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_employees ";
            // line 1776
            if (!twig_in_filter(5, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1776), "delivered", [], "any", false, false, false, 1776))) {
                echo "kt-hidden";
            }
            echo "\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[delivered][employees][]\" data-live-search=\"true\" multiple title=\"";
            // line 1777
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Choose the employees"]);
            echo "\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        ";
            // line 1779
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["employees"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["employee"]) {
                // line 1780
                echo "                                                            <option value=\"";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["employee"], "id", [], "any", false, false, false, 1780), "html", null, true);
                echo "\" ";
                if (twig_in_filter(twig_get_attribute($this->env, $this->source, $context["employee"], "id", [], "any", false, false, false, 1780), twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1780), "assign_shipment", [], "any", false, false, false, 1780), "employees", [], "any", false, false, false, 1780))) {
                    echo "selected";
                }
                echo ">";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["employee"], "name", [], "any", false, false, false, 1780), "html", null, true);
                echo "</option>
                                                        ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['employee'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 1782
            echo "                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[delivered][]\" ";
            // line 1786
            if (twig_in_filter(6, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1786), "delivered", [], "any", false, false, false, 1786))) {
                echo "checked";
            }
            echo " value=\"6\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Sender"]);
            echo " [";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Client"]);
            echo "]
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[delivered][]\" ";
            // line 1792
            if (twig_in_filter(7, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1792), "delivered", [], "any", false, false, false, 1792))) {
                echo "checked";
            }
            echo " value=\"7\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Receiver"]);
            echo " [";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Client"]);
            echo "]
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[delivered][]\" ";
            // line 1798
            if (twig_in_filter(8, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1798), "delivered", [], "any", false, false, false, 1798))) {
                echo "checked";
            }
            echo " value=\"8\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Responsible"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class=\"form-group row\">
                                            <label class=\"col-xl-3 col-lg-3 col-form-label\">";
            // line 1805
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Return Discards Notifications"]);
            echo "</label>
                                            <div class=\"col-lg-9 col-xl-6\">
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[return_discards][]\" ";
            // line 1809
            if (twig_in_filter(1, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1809), "return_discards", [], "any", false, false, false, 1809))) {
                echo "checked";
            }
            echo " value=\"1\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["System Administrators"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[return_discards][]\" ";
            // line 1815
            if (twig_in_filter(2, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1815), "return_discards", [], "any", false, false, false, 1815))) {
                echo "checked";
            }
            echo " value=\"2\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Supervisors"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[return_discards][]\" ";
            // line 1821
            if (twig_in_filter(3, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1821), "return_discards", [], "any", false, false, false, 1821))) {
                echo "checked";
            }
            echo " value=\"3\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Departments Moderators"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[return_discards][]\" ";
            // line 1827
            if (twig_in_filter(4, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1827), "return_discards", [], "any", false, false, false, 1827))) {
                echo "checked";
            }
            echo " value=\"4\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Departments Employees"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_departments ";
            // line 1831
            if ((!twig_in_filter(3, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1831), "return_discards", [], "any", false, false, false, 1831)) && !twig_in_filter(4, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1831), "return_discards", [], "any", false, false, false, 1831)))) {
                echo "kt-hidden";
            }
            echo "\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[return_discards][departments][]\" data-live-search=\"true\" multiple title=\"";
            // line 1832
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Choose the departments"]);
            echo "\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        ";
            // line 1834
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["departments"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["department"]) {
                // line 1835
                echo "                                                            <option value=\"";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["department"], "id", [], "any", false, false, false, 1835), "html", null, true);
                echo "\" ";
                if (twig_in_filter(twig_get_attribute($this->env, $this->source, $context["department"], "id", [], "any", false, false, false, 1835), twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1835), "return_discards", [], "any", false, false, false, 1835), "departments", [], "any", false, false, false, 1835))) {
                    echo "selected";
                }
                echo ">";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["department"], "name", [], "any", false, false, false, 1835), "html", null, true);
                echo "</option>
                                                        ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['department'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 1837
            echo "                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_employees\" name=\"responsibility[return_discards][]\" ";
            // line 1841
            if (twig_in_filter(5, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1841), "return_discards", [], "any", false, false, false, 1841))) {
                echo "checked";
            }
            echo " value=\"5\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Employees"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_employees ";
            // line 1845
            if (!twig_in_filter(5, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1845), "return_discards", [], "any", false, false, false, 1845))) {
                echo "kt-hidden";
            }
            echo "\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[return_discards][employees][]\" data-live-search=\"true\" multiple title=\"";
            // line 1846
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Choose the employees"]);
            echo "\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        ";
            // line 1848
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["employees"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["employee"]) {
                // line 1849
                echo "                                                            <option value=\"";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["employee"], "id", [], "any", false, false, false, 1849), "html", null, true);
                echo "\" ";
                if (twig_in_filter(twig_get_attribute($this->env, $this->source, $context["employee"], "id", [], "any", false, false, false, 1849), twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1849), "assign_shipment", [], "any", false, false, false, 1849), "employees", [], "any", false, false, false, 1849))) {
                    echo "selected";
                }
                echo ">";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["employee"], "name", [], "any", false, false, false, 1849), "html", null, true);
                echo "</option>
                                                        ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['employee'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 1851
            echo "                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[return_discards][]\" ";
            // line 1855
            if (twig_in_filter(6, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1855), "return_discards", [], "any", false, false, false, 1855))) {
                echo "checked";
            }
            echo " value=\"6\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Sender"]);
            echo " [";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Client"]);
            echo "]
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[return_discards][]\" ";
            // line 1861
            if (twig_in_filter(7, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1861), "return_discards", [], "any", false, false, false, 1861))) {
                echo "checked";
            }
            echo " value=\"7\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Receiver"]);
            echo " [";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Client"]);
            echo "]
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[return_discards][]\" ";
            // line 1867
            if (twig_in_filter(8, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["notifications"] ?? null), "responsibility", [], "any", false, false, false, 1867), "return_discards", [], "any", false, false, false, 1867))) {
                echo "checked";
            }
            echo " value=\"8\" required> ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Responsible"]);
            echo "
                                                        <span></span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
        \t\t\t\t\t</div>
        \t\t\t\t\t<div class=\"col-xl-2\"></div>
        \t\t\t\t</div>
        \t\t\t\t<div class=\"row\">
        \t\t\t\t\t<div class=\"col-xl-4\"></div>
        \t\t\t\t\t<div class=\"col-xl-8\">
                                <div class=\"form-group\">
                                    <button type=\"submit\" class=\"btn btn-primary\">";
            // line 1882
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Save"]);
            echo "</button>
                                </div>
                            </div>
                        </div>
                    ";
        } elseif ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source,         // line 1886
($context["this"] ?? null), "param", [], "any", false, false, false, 1886), "page", [], "any", false, false, false, 1886) == "google")) {
            // line 1887
            echo "        \t\t\t\t<div class=\"row\">
        \t\t\t\t\t<div class=\"col-xl-2\"></div>
        \t\t\t\t\t<div class=\"col-xl-8\">
        \t\t\t\t\t\t<div class=\"kt-section kt-section--first\">
                                    <h3 class=\"kt-section__title kt-section__title-lg\">";
            // line 1891
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Google APIs"]);
            echo ":</h3>
        \t\t\t\t\t\t\t<div class=\"kt-section__body\">
                                        <div class=\"kt-section\">
                        \t\t\t\t\t<h5 class=\"kt-section__title kt-margin-b-20\">
                        \t\t\t\t\t\t";
            // line 1895
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Google Maps"]);
            echo "&nbsp;<span class=\"kt-badge kt-badge--danger kt-badge--dot\"></span>
                        \t\t\t\t\t</h5>
                        \t\t\t\t\t<div class=\"kt-section__content\">
                                                <div class=\"form-group row\">
                                                    <label class=\"col-xl-3 col-lg-3 col-form-label\">";
            // line 1899
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Key"]);
            echo "</label>
                                                    <div class=\"col-lg-9 col-xl-6\">
                                                        <input class=\"form-control\" type=\"text\" name=\"map[key]\" value=\"";
            // line 1901
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["google"] ?? null), "map", [], "any", false, false, false, 1901), "key", [], "any", false, false, false, 1901), "html", null, true);
            echo "\" required>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class=\"kt-separator kt-separator--border-dashed kt-separator--space-lg kt-separator--portlet-fit\"></div>
                                        <div class=\"kt-section\">
                        \t\t\t\t\t<h5 class=\"kt-section__title kt-margin-b-20\">
                        \t\t\t\t\t\t";
            // line 1909
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Recaptcha"]);
            echo " ( V2 )&nbsp;<span class=\"kt-badge kt-badge--danger kt-badge--dot\"></span>
                        \t\t\t\t\t</h5>
                        \t\t\t\t\t<div class=\"kt-section__content\">
                                                <div class=\"form-group row\">
                                                    <label class=\"col-xl-3 col-lg-3 col-form-label\">";
            // line 1913
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Key"]);
            echo "</label>
                                                    <div class=\"col-lg-9 col-xl-6\">
                                                        <input class=\"form-control\" type=\"text\" name=\"recaptcha[key]\" value=\"";
            // line 1915
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["google"] ?? null), "recaptcha", [], "any", false, false, false, 1915), "key", [], "any", false, false, false, 1915), "html", null, true);
            echo "\" required>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class=\"kt-separator kt-separator--border-dashed kt-separator--space-lg kt-separator--portlet-fit\"></div>
        \t\t\t\t\t\t\t</div>
        \t\t\t\t\t\t</div>
        \t\t\t\t\t</div>
        \t\t\t\t\t<div class=\"col-xl-2\"></div>
        \t\t\t\t</div>
        \t\t\t\t<div class=\"row\">
        \t\t\t\t\t<div class=\"col-xl-4\"></div>
        \t\t\t\t\t<div class=\"col-xl-8\">
                                <div class=\"form-group\">
                                    <button type=\"submit\" class=\"btn btn-primary\">";
            // line 1930
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Save"]);
            echo "</button>
                                </div>
                            </div>
                        </div>
                    ";
        } elseif ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source,         // line 1934
($context["this"] ?? null), "param", [], "any", false, false, false, 1934), "page", [], "any", false, false, false, 1934) == "currencies")) {
            // line 1935
            echo "                        <div class=\"kt-section kt-section--first\">
                            <div class=\"kt-section__body\">
                                <div class=\"kt-datatable\"></div>
                            </div>
                        </div>
                    ";
        } elseif ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source,         // line 1940
($context["this"] ?? null), "param", [], "any", false, false, false, 1940), "page", [], "any", false, false, false, 1940) == "languages")) {
            // line 1941
            echo "                        <div class=\"kt-section kt-section--first\">
                            <div class=\"kt-section__body\">
                                <div class=\"kt-datatable\"></div>
                            </div>
                        </div>
                    ";
        } elseif ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source,         // line 1946
($context["this"] ?? null), "param", [], "any", false, false, false, 1946), "page", [], "any", false, false, false, 1946) == "departments")) {
            // line 1947
            echo "                        <div class=\"kt-section kt-section--first\">
                            <div class=\"kt-section__body\">
                                <div class=\"kt-datatable\"></div>
                            </div>
                        </div>
                    ";
        } elseif ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source,         // line 1952
($context["this"] ?? null), "param", [], "any", false, false, false, 1952), "page", [], "any", false, false, false, 1952) == "employees")) {
            // line 1953
            echo "                        <div class=\"kt-section kt-section--first\">
                            <div class=\"kt-section__body\">
                                <div class=\"kt-datatable\"></div>
                            </div>
                        </div>
                    ";
        } elseif ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source,         // line 1958
($context["this"] ?? null), "param", [], "any", false, false, false, 1958), "page", [], "any", false, false, false, 1958) == "translate")) {
            // line 1959
            echo "                        <div class=\"kt-section kt-section--first\">
                            <div class=\"kt-section__body\">
                                <table class=\"table table-striped- table-bordered table-hover table-checkable\" id=\"kt_table_1\">
                                \t<thead>
                                \t\t<tr>
                                \t\t\t";
            // line 1964
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["languages"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["lang"]) {
                // line 1965
                echo "                                \t\t\t\t<th>";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["lang"], "name", [], "any", false, false, false, 1965), "html", null, true);
                echo "</th>
                                \t\t\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['lang'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 1967
            echo "                                \t\t</tr>
                                \t</thead>
                                </table>
                            </div>
                        </div>
                    ";
        } elseif ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source,         // line 1972
($context["this"] ?? null), "param", [], "any", false, false, false, 1972), "page", [], "any", false, false, false, 1972) == "backup")) {
            // line 1973
            echo "                        <div class=\"kt-section kt-section--first\">
                            <div class=\"kt-section__body\">
                                <div class=\"kt-datatable\"></div>
                            </div>
                        </div>
                    ";
        }
        // line 1979
        echo "                ";
        echo call_user_func_array($this->env->getFunction('form_close')->getCallable(), ["close"]);
        echo "
        \t</div>
        </div>
    </div>
</div>


";
        // line 1986
        echo $this->env->getExtension('Cms\Twig\Extension')->startBlock('styles'        );
        // line 1987
        echo "    ";
        if ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "param", [], "any", false, false, false, 1987), "page", [], "any", false, false, false, 1987) == "company")) {
            // line 1988
            echo "        <style>
            #map_canvas {
              height: 350px;
            }
        </style>
    ";
        } elseif ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source,         // line 1993
($context["this"] ?? null), "param", [], "any", false, false, false, 1993), "page", [], "any", false, false, false, 1993) == "translate")) {
            // line 1994
            echo "        <style>
            label.translate {
                display: block;
                width: 100%;
                line-height: 24px;
                min-height: 24px;
            }
        </style>
    ";
        }
        // line 1986
        echo $this->env->getExtension('Cms\Twig\Extension')->endBlock(true        );
        // line 2004
        echo $this->env->getExtension('Cms\Twig\Extension')->startBlock('scripts'        );
        // line 2005
        if ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "param", [], "any", false, false, false, 2005), "page", [], "any", false, false, false, 2005) == "company")) {
            // line 2006
            echo "    <script src=\"";
            echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/admin/vendors/custom/geocomplete/jquery.geocomplete.js");
            echo "\" type=\"text/javascript\"></script>
    <script src=\"//maps.googleapis.com/maps/api/js?libraries=places&key=";
            // line 2007
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["settings"] ?? null), "google", [], "any", false, false, false, 2007), "map", [], "any", false, false, false, 2007), "key", [], "any", false, false, false, 2007), "html", null, true);
            echo "\"></script>
";
        } elseif ((((((((((((((((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source,         // line 2008
($context["this"] ?? null), "param", [], "any", false, false, false, 2008), "page", [], "any", false, false, false, 2008) == "translate") || (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "param", [], "any", false, false, false, 2008), "page", [], "any", false, false, false, 2008) == "backup")) || (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "param", [], "any", false, false, false, 2008), "page", [], "any", false, false, false, 2008) == "languages")) || (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "param", [], "any", false, false, false, 2008), "page", [], "any", false, false, false, 2008) == "currencies")) || (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "param", [], "any", false, false, false, 2008), "page", [], "any", false, false, false, 2008) == "departments")) || (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "param", [], "any", false, false, false, 2008), "page", [], "any", false, false, false, 2008) == "branches")) || (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "param", [], "any", false, false, false, 2008), "page", [], "any", false, false, false, 2008) == "branches")) || (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "param", [], "any", false, false, false, 2008), "page", [], "any", false, false, false, 2008) == "cars")) || (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "param", [], "any", false, false, false, 2008), "page", [], "any", false, false, false, 2008) == "cars")) || (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "param", [], "any", false, false, false, 2008), "page", [], "any", false, false, false, 2008) == "packaging")) || (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "param", [], "any", false, false, false, 2008), "page", [], "any", false, false, false, 2008) == "countries")) || (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "param", [], "any", false, false, false, 2008), "page", [], "any", false, false, false, 2008) == "states")) || (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "param", [], "any", false, false, false, 2008), "page", [], "any", false, false, false, 2008) == "cities")) || (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "param", [], "any", false, false, false, 2008), "page", [], "any", false, false, false, 2008) == "areas")) || (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "param", [], "any", false, false, false, 2008), "page", [], "any", false, false, false, 2008) == "fees"))) {
            // line 2009
            echo "    <script src=\"";
            echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/admin/vendors/custom/datatables/datatables.bundle.js");
            echo "\" type=\"text/javascript\"></script>
";
        }
        // line 2011
        echo "<script>
\"use strict\";
var KTAppUserListDatatable = function () {
    // variables
    var datatable;

    // init
    var init = function () {
        // init the datatables. Learn more: //keenthemes.com/metronic/?page=docs&section=datatable
        datatable = \$('.kt-datatable').KTDatatable({
            translate: {
                records: {
                    processing: '";
        // line 2023
        echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Please wait"]);
        echo "...',
                    noRecords: '";
        // line 2024
        echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["No records found"]);
        echo "'
                },
                toolbar: {
                    pagination: {
                        items: {
                            default: {
                                first: '";
        // line 2030
        echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["First"]);
        echo "',
                                prev: '";
        // line 2031
        echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Previous"]);
        echo "',
                                next: '";
        // line 2032
        echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Next"]);
        echo "',
                                last: '";
        // line 2033
        echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Last"]);
        echo "',
                                more: '";
        // line 2034
        echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["More pages"]);
        echo "',
                                input: '";
        // line 2035
        echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Page number"]);
        echo "',
                                select: '";
        // line 2036
        echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Select page size"]);
        echo "'
                            },

                            //info: \"";
        // line 2039
        echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Displaying"]);
        echo " ";
        echo twig_escape_filter($this->env, twig_escape_filter($this->env, ($context["start"] ?? null), "js"), "html", null, true);
        echo " - ";
        echo twig_escape_filter($this->env, ($context["end"] ?? null), "html", null, true);
        echo " ";
        echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["of"]);
        echo " ";
        echo twig_escape_filter($this->env, ($context["total"] ?? null), "html", null, true);
        echo " ";
        echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["records"]);
        echo "\"
                        }
                    }
                }
            },

            // layout definition
            layout: {
                scroll: false, // enable/disable datatable scroll both horizontal and vertical when needed.
                footer: false, // display/hide footer
            },

            // column sorting
            sortable: true,

            pagination: true,

            search: {
                input: \$('#generalSearch'),
                delay: 400,
            },
            ";
        // line 2060
        if ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "param", [], "any", false, false, false, 2060), "page", [], "any", false, false, false, 2060) == "languages")) {
            // line 2061
            echo "                // datasource definition
                data: {
                    type: 'remote',
                    source: {
                        read: {
                            url: '";
            // line 2066
            echo url("api/languages");
            echo "',
                        },
                    },
                    pageSize: 10, // display 20 records per page
                    serverPaging: true,
                    serverFiltering: true,
                    serverSorting: true,
                },
                // columns definition
                columns: [
                    {
                        field: 'id',
                        title: '#',
                        sortable: false,
                        width: 20,
                        selector: {
                            class: 'kt-checkbox--solid'
                        },
                        textAlign: 'center',
                    },
                    {
                        field: \"name\",
                        title: \"";
            // line 2088
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Name"]);
            echo "\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                    },
                    {
                        field: \"code\",
                        title: \"";
            // line 2095
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Code"]);
            echo "\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                    },
                    {
                        field: \"is_enabled\",
                        title: \"";
            // line 2102
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Enabled"]);
            echo "\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
        \t\t\t\t// callback function support for column rendering
        \t\t\t\ttemplate: function(row) {

        \t\t\t\t\tvar status = {
                                1: {
                                    'title': '";
            // line 2111
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Yes"]);
            echo "',
                                    'class': 'success'
                                },
        \t\t\t\t\t\t0: {
        \t\t\t\t\t\t\t'title': '";
            // line 2115
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["No"]);
            echo "',
        \t\t\t\t\t\t\t'class': 'danger'
        \t\t\t\t\t\t},
        \t\t\t\t\t\t'null': {
        \t\t\t\t\t\t\t'title': '";
            // line 2119
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["No"]);
            echo "',
        \t\t\t\t\t\t\t'class': 'danger'
        \t\t\t\t\t\t},
        \t\t\t\t\t};
                            return '<span class=\"kt-badge kt-badge--' + status[row.is_enabled].class + ' kt-badge--dot\"></span>&nbsp;<span class=\"kt-font-bold kt-font-' + status[row.is_enabled].class + '\">' + status[row.is_enabled].title + '</span>';
        \t\t\t\t}
                    },{
        \t\t\t\tfield: \"is_default\",
        \t\t\t\ttitle: \"";
            // line 2127
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Default"]);
            echo "\",
        \t\t\t\twidth: 'auto',
                        sortable: true,
                        width: 120,
        \t\t\t\t// callback function support for column rendering
        \t\t\t\ttemplate: function(row) {

        \t\t\t\t\tvar status = {
                                1: {
                                    'title': '";
            // line 2136
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Yes"]);
            echo "',
                                    'class': 'success'
                                },
        \t\t\t\t\t\t0: {
        \t\t\t\t\t\t\t'title': '";
            // line 2140
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["No"]);
            echo "',
        \t\t\t\t\t\t\t'class': 'danger'
        \t\t\t\t\t\t},
        \t\t\t\t\t\t'null': {
        \t\t\t\t\t\t\t'title': '";
            // line 2144
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["No"]);
            echo "',
        \t\t\t\t\t\t\t'class': 'danger'
        \t\t\t\t\t\t},
        \t\t\t\t\t};
                            return '<span class=\"kt-badge kt-badge--' + status[row.is_default].class + ' kt-badge--dot\"></span>&nbsp;<span class=\"kt-font-bold kt-font-' + status[row.is_default].class + '\">' + status[row.is_default].title + '</span>';
        \t\t\t\t}
                    },
                    {
                        field: \"Actions\",
                        width: 'auto',
                        title: \"";
            // line 2154
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Actions"]);
            echo "\",
                        sortable: false,
                        autoHide: false,
                        overflow: 'visible',
                        template: function (data) {
                                ";
            // line 2159
            if ((twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "languages", 1 => "u"], "method", false, false, false, 2159) || twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "languages", 1 => "d"], "method", false, false, false, 2159))) {
                // line 2160
                echo "                                    return '' +
                                    '<div class=\"btn-group btn-group\" role=\"group\" aria-label=\"...\">'+
                                        ";
                // line 2162
                if (twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "languages", 1 => "u"], "method", false, false, false, 2162)) {
                    // line 2163
                    echo "                                        '<a href=\"";
                    echo url("dashboard/settings/languages");
                    echo "/'+data.id+'/edit\" class=\"btn btn-info btn-sm\"><i class=\"flaticon-edit\"></i>&nbsp;";
                    echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Edit"]);
                    echo "</button>'+
                                        ";
                }
                // line 2165
                echo "                                        ";
                if (twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "languages", 1 => "d"], "method", false, false, false, 2165)) {
                    // line 2166
                    echo "                                        '<a href=\"javascript:void(0);\" class=\"btn btn-danger btn-sm delete_record kt-font-light\" rel=\"'+data.id+'\" data-type=\"languages\"><i class=\"flaticon2-delete\"></i>&nbsp;";
                    echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Delete"]);
                    echo "</a>'+
                                        ";
                }
                // line 2168
                echo "                                    '</div>';
                                ";
            } else {
                // line 2170
                echo "                                    return '-';
                                ";
            }
            // line 2172
            echo "                        },
                    }
                ]
            ";
        } elseif ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source,         // line 2175
($context["this"] ?? null), "param", [], "any", false, false, false, 2175), "page", [], "any", false, false, false, 2175) == "currencies")) {
            // line 2176
            echo "                // datasource definition
                data: {
                    type: 'remote',
                    source: {
                        read: {
                            url: '";
            // line 2181
            echo url("api/currencies");
            echo "',
                        },
                    },
                    pageSize: 10, // display 20 records per page
                    serverPaging: true,
                    serverFiltering: true,
                    serverSorting: true,
                },
                // columns definition
                columns: [
                    {
                        field: 'id',
                        title: '#',
                        sortable: false,
                        width: 20,
                        selector: {
                            class: 'kt-checkbox--solid'
                        },
                        textAlign: 'center',
                    },
                    {
                        field: \"name\",
                        title: \"";
            // line 2203
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Name"]);
            echo "\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                    },
                    {
                        field: \"code\",
                        title: \"";
            // line 2210
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Code"]);
            echo "\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                    },
                    {
                        field: \"is_enabled\",
                        title: \"";
            // line 2217
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Enabled"]);
            echo "\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
        \t\t\t\t// callback function support for column rendering
        \t\t\t\ttemplate: function(row) {

        \t\t\t\t\tvar status = {
                                1: {
                                    'title': '";
            // line 2226
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Yes"]);
            echo "',
                                    'class': 'success'
                                },
        \t\t\t\t\t\t0: {
        \t\t\t\t\t\t\t'title': '";
            // line 2230
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["No"]);
            echo "',
        \t\t\t\t\t\t\t'class': 'danger'
        \t\t\t\t\t\t},
        \t\t\t\t\t\t'null': {
        \t\t\t\t\t\t\t'title': '";
            // line 2234
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["No"]);
            echo "',
        \t\t\t\t\t\t\t'class': 'danger'
        \t\t\t\t\t\t},
        \t\t\t\t\t};
                            return '<span class=\"kt-badge kt-badge--' + status[row.is_enabled].class + ' kt-badge--dot\"></span>&nbsp;<span class=\"kt-font-bold kt-font-' + status[row.is_enabled].class + '\">' + status[row.is_enabled].title + '</span>';
        \t\t\t\t}
                    },{
        \t\t\t\tfield: \"is_default\",
        \t\t\t\ttitle: \"";
            // line 2242
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Default"]);
            echo "\",
        \t\t\t\twidth: 'auto',
                        sortable: true,
                        width: 120,
        \t\t\t\t// callback function support for column rendering
        \t\t\t\ttemplate: function(row) {

        \t\t\t\t\tvar status = {
                                1: {
                                    'title': '";
            // line 2251
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Yes"]);
            echo "',
                                    'class': 'success'
                                },
        \t\t\t\t\t\t0: {
        \t\t\t\t\t\t\t'title': '";
            // line 2255
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["No"]);
            echo "',
        \t\t\t\t\t\t\t'class': 'danger'
        \t\t\t\t\t\t},
        \t\t\t\t\t\t'null': {
        \t\t\t\t\t\t\t'title': '";
            // line 2259
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["No"]);
            echo "',
        \t\t\t\t\t\t\t'class': 'danger'
        \t\t\t\t\t\t},
        \t\t\t\t\t};
                            return '<span class=\"kt-badge kt-badge--' + status[row.is_default].class + ' kt-badge--dot\"></span>&nbsp;<span class=\"kt-font-bold kt-font-' + status[row.is_default].class + '\">' + status[row.is_default].title + '</span>';
        \t\t\t\t}
                    },
                    {
                        field: \"Actions\",
                        width: 'auto',
                        title: \"";
            // line 2269
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Actions"]);
            echo "\",
                        sortable: false,
                        autoHide: false,
                        overflow: 'visible',
                        template: function (data) {
                                ";
            // line 2274
            if ((twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "currencies", 1 => "u"], "method", false, false, false, 2274) || twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "currencies", 1 => "d"], "method", false, false, false, 2274))) {
                // line 2275
                echo "                                    return '' +
                                    '<div class=\"btn-group btn-group\" role=\"group\" aria-label=\"...\">'+
                                        ";
                // line 2277
                if (twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "currencies", 1 => "u"], "method", false, false, false, 2277)) {
                    // line 2278
                    echo "                                        '<a href=\"";
                    echo url("dashboard/settings/currencies");
                    echo "/'+data.id+'/edit\" class=\"btn btn-info btn-sm\"><i class=\"flaticon-edit\"></i>&nbsp;";
                    echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Edit"]);
                    echo "</button>'+
                                        ";
                }
                // line 2280
                echo "                                        ";
                if (twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "currencies", 1 => "d"], "method", false, false, false, 2280)) {
                    // line 2281
                    echo "                                        '<a href=\"javascript:void(0);\" class=\"btn btn-danger btn-sm delete_record kt-font-light\" rel=\"'+data.id+'\" data-type=\"currencies\"><i class=\"flaticon2-delete\"></i>&nbsp;";
                    echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Delete"]);
                    echo "</a>'+
                                        ";
                }
                // line 2283
                echo "                                    '</div>';
                                ";
            } else {
                // line 2285
                echo "                                    return '-';
                                ";
            }
            // line 2287
            echo "                        },
                    }
                ]
            ";
        } elseif ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source,         // line 2290
($context["this"] ?? null), "param", [], "any", false, false, false, 2290), "page", [], "any", false, false, false, 2290) == "departments")) {
            // line 2291
            echo "                // datasource definition
                data: {
                    type: 'remote',
                    source: {
                        read: {
                            url: '";
            // line 2296
            echo url("api/departments");
            echo "',
                        },
                    },
                    pageSize: 10, // display 20 records per page
                    serverPaging: true,
                    serverFiltering: true,
                    serverSorting: true,
                },
                // columns definition
                columns: [
                    {
                        field: 'id',
                        title: '#',
                        sortable: false,
                        width: 20,
                        selector: {
                            class: 'kt-checkbox--solid'
                        },
                        textAlign: 'center',
                    },
                    {
                        field: \"name\",
                        title: \"";
            // line 2318
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Name"]);
            echo "\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                    },
                    {
                        field: \"code\",
                        title: \"";
            // line 2325
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Code"]);
            echo "\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                    },
                    {
                        field: \"Actions\",
                        width: 'auto',
                        title: \"";
            // line 2333
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Actions"]);
            echo "\",
                        sortable: false,
                        autoHide: false,
                        overflow: 'visible',
                        template: function (data) {
                                ";
            // line 2338
            if ((twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "departments", 1 => "u"], "method", false, false, false, 2338) || twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "departments", 1 => "d"], "method", false, false, false, 2338))) {
                // line 2339
                echo "                                    return '' +
                                    '<div class=\"btn-group btn-group\" role=\"group\" aria-label=\"...\">'+
                                        ";
                // line 2341
                if (twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "departments", 1 => "u"], "method", false, false, false, 2341)) {
                    // line 2342
                    echo "                                        '<a href=\"";
                    echo url("dashboard/settings/departments");
                    echo "/'+data.id+'/edit\" class=\"btn btn-info btn-sm\"><i class=\"flaticon-edit\"></i>&nbsp;";
                    echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Edit"]);
                    echo "</button>'+
                                        ";
                }
                // line 2344
                echo "                                        ";
                if (twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "departments", 1 => "d"], "method", false, false, false, 2344)) {
                    // line 2345
                    echo "                                        '<a href=\"javascript:void(0);\" class=\"btn btn-danger btn-sm delete_record kt-font-light\" rel=\"'+data.id+'\" data-type=\"departments\"><i class=\"flaticon2-delete\"></i>&nbsp;";
                    echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Delete"]);
                    echo "</a>'+
                                        ";
                }
                // line 2347
                echo "                                    '</div>';
                                ";
            } else {
                // line 2349
                echo "                                    return '-';
                                ";
            }
            // line 2351
            echo "                        },
                    }
                ]
            ";
        } elseif ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source,         // line 2354
($context["this"] ?? null), "param", [], "any", false, false, false, 2354), "page", [], "any", false, false, false, 2354) == "branches")) {
            // line 2355
            echo "                // datasource definition
                data: {
                    type: 'remote',
                    source: {
                        read: {
                            url: '";
            // line 2360
            echo url("api/branches");
            echo "',
                        },
                    },
                    pageSize: 10, // display 20 records per page
                    serverPaging: true,
                    serverFiltering: true,
                    serverSorting: true,
                },
                // columns definition
                columns: [
                    {
                        field: 'id',
                        title: '#',
                        sortable: false,
                        width: 20,
                        selector: {
                            class: 'kt-checkbox--solid'
                        },
                        textAlign: 'center',
                    },
                    {
                        field: \"name\",
                        title: \"";
            // line 2382
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Name"]);
            echo "\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                    },
                    {
                        field: \"Actions\",
                        width: 'auto',
                        title: \"";
            // line 2390
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Actions"]);
            echo "\",
                        sortable: false,
                        autoHide: false,
                        overflow: 'visible',
                        template: function (data) {
                                ";
            // line 2395
            if ((twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "branches", 1 => "u"], "method", false, false, false, 2395) || twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "packaging", 1 => "d"], "method", false, false, false, 2395))) {
                // line 2396
                echo "                                    return '' +
                                    '<div class=\"btn-group btn-group\" role=\"group\" aria-label=\"...\">'+
                                        ";
                // line 2398
                if (twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "branches", 1 => "u"], "method", false, false, false, 2398)) {
                    // line 2399
                    echo "                                        '<a href=\"";
                    echo url("dashboard/settings/branches");
                    echo "/'+data.id+'/edit\" class=\"btn btn-info btn-sm\"><i class=\"flaticon-edit\"></i>&nbsp;";
                    echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Edit"]);
                    echo "</button>'+
                                        ";
                }
                // line 2401
                echo "                                        ";
                if (twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "branches", 1 => "d"], "method", false, false, false, 2401)) {
                    // line 2402
                    echo "                                        '<a href=\"javascript:void(0);\" class=\"btn btn-danger btn-sm delete_record kt-font-light\" rel=\"'+data.id+'\" data-type=\"branches\"><i class=\"flaticon2-delete\"></i>&nbsp;";
                    echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Delete"]);
                    echo "</a>'+
                                        ";
                }
                // line 2404
                echo "                                    '</div>';
                                ";
            } else {
                // line 2406
                echo "                                    return '-';
                                ";
            }
            // line 2408
            echo "                        },
                    }
                ]
            ";
        } elseif ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source,         // line 2411
($context["this"] ?? null), "param", [], "any", false, false, false, 2411), "page", [], "any", false, false, false, 2411) == "cars")) {
            // line 2412
            echo "                // datasource definition
                data: {
                    type: 'remote',
                    source: {
                        read: {
                            url: '";
            // line 2417
            echo url("api/cars");
            echo "',
                        },
                    },
                    pageSize: 10, // display 20 records per page
                    serverPaging: true,
                    serverFiltering: true,
                    serverSorting: true,
                },
                // columns definition
                columns: [
                    {
                        field: 'id',
                        title: '#',
                        sortable: false,
                        width: 20,
                        selector: {
                            class: 'kt-checkbox--solid'
                        },
                        textAlign: 'center',
                    },
                    {
                        field: \"name\",
                        title: \"";
            // line 2439
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Name"]);
            echo "\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                    },
                    {
                        field: \"Actions\",
                        width: 'auto',
                        title: \"";
            // line 2447
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Actions"]);
            echo "\",
                        sortable: false,
                        autoHide: false,
                        overflow: 'visible',
                        template: function (data) {
                                ";
            // line 2452
            if ((twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "cars", 1 => "u"], "method", false, false, false, 2452) || twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "packaging", 1 => "d"], "method", false, false, false, 2452))) {
                // line 2453
                echo "                                    return '' +
                                    '<div class=\"btn-group btn-group\" role=\"group\" aria-label=\"...\">'+
                                        ";
                // line 2455
                if (twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "cars", 1 => "u"], "method", false, false, false, 2455)) {
                    // line 2456
                    echo "                                        '<a href=\"";
                    echo url("dashboard/settings/cars");
                    echo "/'+data.id+'/edit\" class=\"btn btn-info btn-sm\"><i class=\"flaticon-edit\"></i>&nbsp;";
                    echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Edit"]);
                    echo "</button>'+
                                        ";
                }
                // line 2458
                echo "                                        ";
                if (twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "cars", 1 => "d"], "method", false, false, false, 2458)) {
                    // line 2459
                    echo "                                        '<a href=\"javascript:void(0);\" class=\"btn btn-danger btn-sm delete_record kt-font-light\" rel=\"'+data.id+'\" data-type=\"cars\"><i class=\"flaticon2-delete\"></i>&nbsp;";
                    echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Delete"]);
                    echo "</a>'+
                                        ";
                }
                // line 2461
                echo "                                    '</div>';
                                ";
            } else {
                // line 2463
                echo "                                    return '-';
                                ";
            }
            // line 2465
            echo "                        },
                    }
                ]
            ";
        } elseif ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source,         // line 2468
($context["this"] ?? null), "param", [], "any", false, false, false, 2468), "page", [], "any", false, false, false, 2468) == "statuses")) {
            // line 2469
            echo "                // datasource definition
                data: {
                    type: 'remote',
                    source: {
                        read: {
                            url: '";
            // line 2474
            echo url("api/statuses");
            echo "',
                        },
                    },
                    pageSize: 10, // display 20 records per page
                    serverPaging: true,
                    serverFiltering: true,
                    serverSorting: true,
                },
                // columns definition
                columns: [
                    {
                        field: 'id',
                        title: '#',
                        sortable: false,
                        width: 20,
                        selector: {
                            class: 'kt-checkbox--solid'
                        },
                        textAlign: 'center',
                    },
                    {
                        field: \"name\",
                        title: \"";
            // line 2496
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Name"]);
            echo "\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                    },
                    {
                        field: \"Actions\",
                        width: 'auto',
                        title: \"";
            // line 2504
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Actions"]);
            echo "\",
                        sortable: false,
                        autoHide: false,
                        overflow: 'visible',
                        template: function (data) {
                                ";
            // line 2509
            if ((twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "statuses", 1 => "u"], "method", false, false, false, 2509) || twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "statuses", 1 => "d"], "method", false, false, false, 2509))) {
                // line 2510
                echo "                                    return '' +
                                    '<div class=\"btn-group btn-group\" role=\"group\" aria-label=\"...\">'+
                                        ";
                // line 2512
                if (twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "statuses", 1 => "u"], "method", false, false, false, 2512)) {
                    // line 2513
                    echo "                                        '<a href=\"";
                    echo url("dashboard/settings/statuses");
                    echo "/'+data.id+'/edit\" class=\"btn btn-info btn-sm\"><i class=\"flaticon-edit\"></i>&nbsp;";
                    echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Edit"]);
                    echo "</button>'+
                                        ";
                }
                // line 2515
                echo "                                        ";
                if (twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "statuses", 1 => "d"], "method", false, false, false, 2515)) {
                    // line 2516
                    echo "                                        '<a href=\"javascript:void(0);\" class=\"btn btn-danger btn-sm delete_record kt-font-light\" rel=\"'+data.id+'\" data-type=\"statuses\"><i class=\"flaticon2-delete\"></i>&nbsp;";
                    echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Delete"]);
                    echo "</a>'+
                                        ";
                }
                // line 2518
                echo "                                    '</div>';
                                ";
            } else {
                // line 2520
                echo "                                    return '-';
                                ";
            }
            // line 2522
            echo "                        },
                    }
                ]
            ";
        } elseif ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source,         // line 2525
($context["this"] ?? null), "param", [], "any", false, false, false, 2525), "page", [], "any", false, false, false, 2525) == "treasury")) {
            // line 2526
            echo "                // datasource definition
                data: {
                    type: 'remote',
                    source: {
                        read: {
                            url: '";
            // line 2531
            echo url("api/treasury");
            echo "',
                        },
                    },
                    pageSize: 10, // display 20 records per page
                    serverPaging: true,
                    serverFiltering: true,
                    serverSorting: true,
                },
                // columns definition
                columns: [
                    {
                        field: 'id',
                        title: '#',
                        sortable: false,
                        width: 20,
                        selector: {
                            class: 'kt-checkbox--solid'
                        },
                        textAlign: 'center',
                    },
                    {
                        field: \"name\",
                        title: \"";
            // line 2553
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Name"]);
            echo "\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                        template: function (data) {
                            return '<a href=\"";
            // line 2558
            echo url("dashboard/treasury");
            echo "/' + data.id + '/view\">' + data.name + '</a>';
                        },
                    },
                    {
                        field: \"balance\",
                        title: \"";
            // line 2563
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Balance"]);
            echo "\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                    },
                    {
                        field: \"office\",
                        title: \"";
            // line 2570
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Office"]);
            echo "\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                    },
                    {
                        field: \"Actions\",
                        width: 'auto',
                        title: \"";
            // line 2578
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Actions"]);
            echo "\",
                        sortable: false,
                        autoHide: false,
                        overflow: 'visible',
                        template: function (data) {
                                ";
            // line 2583
            if ((twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "treasury", 1 => "u"], "method", false, false, false, 2583) || twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "treasury", 1 => "d"], "method", false, false, false, 2583))) {
                // line 2584
                echo "                                    return '' +
                                    '<div class=\"btn-group btn-group\" role=\"group\" aria-label=\"...\">'+
                                        ";
                // line 2586
                if (twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "treasury", 1 => "u"], "method", false, false, false, 2586)) {
                    // line 2587
                    echo "                                        '<a href=\"";
                    echo url("dashboard/settings/treasury");
                    echo "/'+data.id+'/edit\" class=\"btn btn-info btn-sm\"><i class=\"flaticon-edit\"></i>&nbsp;";
                    echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Edit"]);
                    echo "</button>'+
                                        ";
                }
                // line 2589
                echo "                                        ";
                if (twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "treasury", 1 => "d"], "method", false, false, false, 2589)) {
                    // line 2590
                    echo "                                        '<a href=\"javascript:void(0);\" class=\"btn btn-danger btn-sm delete_record kt-font-light\" rel=\"'+data.id+'\" data-type=\"treasury\"><i class=\"flaticon2-delete\"></i>&nbsp;";
                    echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Delete"]);
                    echo "</a>'+
                                        ";
                }
                // line 2592
                echo "                                    '</div>';
                                ";
            } else {
                // line 2594
                echo "                                    return '-';
                                ";
            }
            // line 2596
            echo "                        },
                    }
                ]
            ";
        } elseif ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source,         // line 2599
($context["this"] ?? null), "param", [], "any", false, false, false, 2599), "page", [], "any", false, false, false, 2599) == "categories")) {
            // line 2600
            echo "                // datasource definition
                data: {
                    type: 'remote',
                    source: {
                        read: {
                            url: '";
            // line 2605
            echo url("api/categories");
            echo "',
                        },
                    },
                    pageSize: 10, // display 20 records per page
                    serverPaging: true,
                    serverFiltering: true,
                    serverSorting: true,
                },
                // columns definition
                columns: [
                    {
                        field: 'id',
                        title: '#',
                        sortable: false,
                        width: 20,
                        selector: {
                            class: 'kt-checkbox--solid'
                        },
                        textAlign: 'center',
                    },
                    {
                        field: \"name\",
                        title: \"";
            // line 2627
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Name"]);
            echo "\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                    },
                    {
                        field: \"Actions\",
                        width: 'auto',
                        title: \"";
            // line 2635
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Actions"]);
            echo "\",
                        sortable: false,
                        autoHide: false,
                        overflow: 'visible',
                        template: function (data) {
                                ";
            // line 2640
            if ((twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "category", 1 => "u"], "method", false, false, false, 2640) || twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "category", 1 => "d"], "method", false, false, false, 2640))) {
                // line 2641
                echo "                                    return '' +
                                    '<div class=\"btn-group btn-group\" role=\"group\" aria-label=\"...\">'+
                                        ";
                // line 2643
                if (twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "category", 1 => "u"], "method", false, false, false, 2643)) {
                    // line 2644
                    echo "                                        '<a href=\"";
                    echo url("dashboard/settings/categories");
                    echo "/'+data.id+'/edit\" class=\"btn btn-info btn-sm\"><i class=\"flaticon-edit\"></i>&nbsp;";
                    echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Edit"]);
                    echo "</button>'+
                                        ";
                }
                // line 2646
                echo "                                        ";
                if (twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "category", 1 => "d"], "method", false, false, false, 2646)) {
                    // line 2647
                    echo "                                        '<a href=\"javascript:void(0);\" class=\"btn btn-danger btn-sm delete_record kt-font-light\" rel=\"'+data.id+'\" data-type=\"categories\"><i class=\"flaticon2-delete\"></i>&nbsp;";
                    echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Delete"]);
                    echo "</a>'+
                                        ";
                }
                // line 2649
                echo "                                    '</div>';
                                ";
            } else {
                // line 2651
                echo "                                    return '-';
                                ";
            }
            // line 2653
            echo "                        },
                    }
                ]
            ";
        } elseif ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source,         // line 2656
($context["this"] ?? null), "param", [], "any", false, false, false, 2656), "page", [], "any", false, false, false, 2656) == "couriers")) {
            // line 2657
            echo "                // datasource definition
                data: {
                    type: 'remote',
                    source: {
                        read: {
                            url: '";
            // line 2662
            echo url("api/couriers");
            echo "',
                        },
                    },
                    pageSize: 10, // display 20 records per page
                    serverPaging: true,
                    serverFiltering: true,
                    serverSorting: true,
                },
                // columns definition
                columns: [
                    {
                        field: 'id',
                        title: '#',
                        sortable: false,
                        width: 20,
                        selector: {
                            class: 'kt-checkbox--solid'
                        },
                        textAlign: 'center',
                    },
                    {
                        field: \"name\",
                        title: \"";
            // line 2684
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Name"]);
            echo "\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                    },
                    {
                        field: \"Actions\",
                        width: 'auto',
                        title: \"";
            // line 2692
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Actions"]);
            echo "\",
                        sortable: false,
                        autoHide: false,
                        overflow: 'visible',
                        template: function (data) {
                                ";
            // line 2697
            if ((twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "couriers", 1 => "u"], "method", false, false, false, 2697) || twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "couriers", 1 => "d"], "method", false, false, false, 2697))) {
                // line 2698
                echo "                                    return '' +
                                    '<div class=\"btn-group btn-group\" role=\"group\" aria-label=\"...\">'+
                                        ";
                // line 2700
                if (twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "category", 1 => "u"], "method", false, false, false, 2700)) {
                    // line 2701
                    echo "                                        '<a href=\"";
                    echo url("dashboard/settings/couriers");
                    echo "/'+data.id+'/edit\" class=\"btn btn-info btn-sm\"><i class=\"flaticon-edit\"></i>&nbsp;";
                    echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Edit"]);
                    echo "</button>'+
                                        ";
                }
                // line 2703
                echo "                                        ";
                if (twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "couriers", 1 => "d"], "method", false, false, false, 2703)) {
                    // line 2704
                    echo "                                        '<a href=\"javascript:void(0);\" class=\"btn btn-danger btn-sm delete_record kt-font-light\" rel=\"'+data.id+'\" data-type=\"couriers\"><i class=\"flaticon2-delete\"></i>&nbsp;";
                    echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Delete"]);
                    echo "</a>'+
                                        ";
                }
                // line 2706
                echo "                                    '</div>';
                                ";
            } else {
                // line 2708
                echo "                                    return '-';
                                ";
            }
            // line 2710
            echo "                        },
                    }
                ]
            ";
        } elseif ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source,         // line 2713
($context["this"] ?? null), "param", [], "any", false, false, false, 2713), "page", [], "any", false, false, false, 2713) == "deliverytimes")) {
            // line 2714
            echo "                // datasource definition
                data: {
                    type: 'remote',
                    source: {
                        read: {
                            url: '";
            // line 2719
            echo url("api/deliverytimes");
            echo "',
                        },
                    },
                    pageSize: 10, // display 20 records per page
                    serverPaging: true,
                    serverFiltering: true,
                    serverSorting: true,
                },
                // columns definition
                columns: [
                    {
                        field: 'id',
                        title: '#',
                        sortable: false,
                        width: 20,
                        selector: {
                            class: 'kt-checkbox--solid'
                        },
                        textAlign: 'center',
                    },
                    {
                        field: \"name\",
                        title: \"";
            // line 2741
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Name"]);
            echo "\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                    },
                    {
                        field: \"Actions\",
                        width: 'auto',
                        title: \"";
            // line 2749
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Actions"]);
            echo "\",
                        sortable: false,
                        autoHide: false,
                        overflow: 'visible',
                        template: function (data) {
                                ";
            // line 2754
            if ((twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "deliverytimes", 1 => "u"], "method", false, false, false, 2754) || twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "deliverytimes", 1 => "d"], "method", false, false, false, 2754))) {
                // line 2755
                echo "                                    return '' +
                                    '<div class=\"btn-group btn-group\" role=\"group\" aria-label=\"...\">'+
                                        ";
                // line 2757
                if (twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "category", 1 => "u"], "method", false, false, false, 2757)) {
                    // line 2758
                    echo "                                        '<a href=\"";
                    echo url("dashboard/settings/deliverytimes");
                    echo "/'+data.id+'/edit\" class=\"btn btn-info btn-sm\"><i class=\"flaticon-edit\"></i>&nbsp;";
                    echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Edit"]);
                    echo "</button>'+
                                        ";
                }
                // line 2760
                echo "                                        ";
                if (twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "deliverytimes", 1 => "d"], "method", false, false, false, 2760)) {
                    // line 2761
                    echo "                                        '<a href=\"javascript:void(0);\" class=\"btn btn-danger btn-sm delete_record kt-font-light\" rel=\"'+data.id+'\" data-type=\"deliverytimes\"><i class=\"flaticon2-delete\"></i>&nbsp;";
                    echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Delete"]);
                    echo "</a>'+
                                        ";
                }
                // line 2763
                echo "                                    '</div>';
                                ";
            } else {
                // line 2765
                echo "                                    return '-';
                                ";
            }
            // line 2767
            echo "                        },
                    }
                ]
            ";
        } elseif ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source,         // line 2770
($context["this"] ?? null), "param", [], "any", false, false, false, 2770), "page", [], "any", false, false, false, 2770) == "shipping")) {
            // line 2771
            echo "                // datasource definition
                data: {
                    type: 'remote',
                    source: {
                        read: {
                            url: '";
            // line 2776
            echo url("api/shipping");
            echo "',
                        },
                    },
                    pageSize: 10, // display 20 records per page
                    serverPaging: true,
                    serverFiltering: true,
                    serverSorting: true,
                },
                // columns definition
                columns: [
                    {
                        field: 'id',
                        title: '#',
                        sortable: false,
                        width: 20,
                        selector: {
                            class: 'kt-checkbox--solid'
                        },
                        textAlign: 'center',
                    },
                    {
                        field: \"name\",
                        title: \"";
            // line 2798
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Name"]);
            echo "\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                    },
                    {
                        field: \"Actions\",
                        width: 'auto',
                        title: \"";
            // line 2806
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Actions"]);
            echo "\",
                        sortable: false,
                        autoHide: false,
                        overflow: 'visible',
                        template: function (data) {
                                ";
            // line 2811
            if ((twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "shipping", 1 => "u"], "method", false, false, false, 2811) || twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "shipping", 1 => "d"], "method", false, false, false, 2811))) {
                // line 2812
                echo "                                    return '' +
                                    '<div class=\"btn-group btn-group\" role=\"group\" aria-label=\"...\">'+
                                        ";
                // line 2814
                if (twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "shipping", 1 => "u"], "method", false, false, false, 2814)) {
                    // line 2815
                    echo "                                        '<a href=\"";
                    echo url("dashboard/settings/shipping");
                    echo "/'+data.id+'/edit\" class=\"btn btn-info btn-sm\"><i class=\"flaticon-edit\"></i>&nbsp;";
                    echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Edit"]);
                    echo "</button>'+
                                        ";
                }
                // line 2817
                echo "                                        ";
                if (twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "shipping", 1 => "d"], "method", false, false, false, 2817)) {
                    // line 2818
                    echo "                                        '<a href=\"javascript:void(0);\" class=\"btn btn-danger btn-sm delete_record kt-font-light\" rel=\"'+data.id+'\" data-type=\"shipping\"><i class=\"flaticon2-delete\"></i>&nbsp;";
                    echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Delete"]);
                    echo "</a>'+
                                        ";
                }
                // line 2820
                echo "                                    '</div>';
                                ";
            } else {
                // line 2822
                echo "                                    return '-';
                                ";
            }
            // line 2824
            echo "                        },
                    }
                ]
            ";
        } elseif ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source,         // line 2827
($context["this"] ?? null), "param", [], "any", false, false, false, 2827), "page", [], "any", false, false, false, 2827) == "packaging")) {
            // line 2828
            echo "                // datasource definition
                data: {
                    type: 'remote',
                    source: {
                        read: {
                            url: '";
            // line 2833
            echo url("api/packaging");
            echo "',
                        },
                    },
                    pageSize: 10, // display 20 records per page
                    serverPaging: true,
                    serverFiltering: true,
                    serverSorting: true,
                },
                // columns definition
                columns: [
                    {
                        field: 'id',
                        title: '#',
                        sortable: false,
                        width: 20,
                        selector: {
                            class: 'kt-checkbox--solid'
                        },
                        textAlign: 'center',
                    },
                    {
                        field: \"name\",
                        title: \"";
            // line 2855
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Name"]);
            echo "\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                    },
                    {
                        field: \"Actions\",
                        width: 'auto',
                        title: \"";
            // line 2863
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Actions"]);
            echo "\",
                        sortable: false,
                        autoHide: false,
                        overflow: 'visible',
                        template: function (data) {
                                ";
            // line 2868
            if ((twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "packaging", 1 => "u"], "method", false, false, false, 2868) || twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "packaging", 1 => "d"], "method", false, false, false, 2868))) {
                // line 2869
                echo "                                    return '' +
                                    '<div class=\"btn-group btn-group\" role=\"group\" aria-label=\"...\">'+
                                        ";
                // line 2871
                if (twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "packaging", 1 => "u"], "method", false, false, false, 2871)) {
                    // line 2872
                    echo "                                        '<a href=\"";
                    echo url("dashboard/settings/packaging");
                    echo "/'+data.id+'/edit\" class=\"btn btn-info btn-sm\"><i class=\"flaticon-edit\"></i>&nbsp;";
                    echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Edit"]);
                    echo "</button>'+
                                        ";
                }
                // line 2874
                echo "                                        ";
                if (twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "packaging", 1 => "d"], "method", false, false, false, 2874)) {
                    // line 2875
                    echo "                                        '<a href=\"javascript:void(0);\" class=\"btn btn-danger btn-sm delete_record kt-font-light\" rel=\"'+data.id+'\" data-type=\"packaging\"><i class=\"flaticon2-delete\"></i>&nbsp;";
                    echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Delete"]);
                    echo "</a>'+
                                        ";
                }
                // line 2877
                echo "                                    '</div>';
                                ";
            } else {
                // line 2879
                echo "                                    return '-';
                                ";
            }
            // line 2881
            echo "                        },
                    }
                ]
            ";
        } elseif ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source,         // line 2884
($context["this"] ?? null), "param", [], "any", false, false, false, 2884), "page", [], "any", false, false, false, 2884) == "countries")) {
            // line 2885
            echo "                // datasource definition
                data: {
                    type: 'remote',
                    source: {
                        read: {
                            url: '";
            // line 2890
            echo url("api/countries");
            echo "',
                        },
                    },
                    pageSize: 10, // display 20 records per page
                    serverPaging: true,
                    serverFiltering: true,
                    serverSorting: true,
                },
                // columns definition
                columns: [
                    {
                        field: 'id',
                        title: '#',
                        sortable: false,
                        width: 20,
                        selector: {
                            class: 'kt-checkbox--solid'
                        },
                        textAlign: 'center',
                    },
                    {
                        field: \"number\",
                        title: \"";
            // line 2912
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["ID"]);
            echo "\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                        template: function (data) {
                            return data.id;
                        },
                    },
                    {
                        field: \"name\",
                        title: \"";
            // line 2922
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Name"]);
            echo "\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                    },
                    {
                        field: \"Actions\",
                        width: 'auto',
                        title: \"";
            // line 2930
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Actions"]);
            echo "\",
                        sortable: false,
                        autoHide: false,
                        overflow: 'visible',
                        template: function (data) {
                                ";
            // line 2935
            if ((twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "countries", 1 => "u"], "method", false, false, false, 2935) || twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "countries", 1 => "d"], "method", false, false, false, 2935))) {
                // line 2936
                echo "                                    return '' +
                                    '<div class=\"btn-group btn-group\" role=\"group\" aria-label=\"...\">'+
                                        ";
                // line 2938
                if (twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "countries", 1 => "u"], "method", false, false, false, 2938)) {
                    // line 2939
                    echo "                                        '<a href=\"";
                    echo url("dashboard/settings/countries");
                    echo "/'+data.id+'/edit\" class=\"btn btn-info btn-sm\"><i class=\"flaticon-edit\"></i>&nbsp;";
                    echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Edit"]);
                    echo "</button>'+
                                        ";
                }
                // line 2941
                echo "                                        ";
                if (twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "countries", 1 => "d"], "method", false, false, false, 2941)) {
                    // line 2942
                    echo "                                        '<a href=\"javascript:void(0);\" class=\"btn btn-danger btn-sm delete_record kt-font-light\" rel=\"'+data.id+'\" data-type=\"countries\"><i class=\"flaticon2-delete\"></i>&nbsp;";
                    echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Delete"]);
                    echo "</a>'+
                                        ";
                }
                // line 2944
                echo "                                    '</div>';
                                ";
            } else {
                // line 2946
                echo "                                    return '-';
                                ";
            }
            // line 2948
            echo "                        },
                    }
                ]
            ";
        } elseif ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source,         // line 2951
($context["this"] ?? null), "param", [], "any", false, false, false, 2951), "page", [], "any", false, false, false, 2951) == "states")) {
            // line 2952
            echo "                // datasource definition
                data: {
                    type: 'remote',
                    source: {
                        read: {
                            url: '";
            // line 2957
            echo url("api/states");
            echo "',
                        },
                    },
                    pageSize: 10, // display 20 records per page
                    serverPaging: true,
                    serverFiltering: true,
                    serverSorting: true,
                },
                // columns definition
                columns: [
                    {
                        field: 'id',
                        title: '#',
                        sortable: false,
                        width: 20,
                        selector: {
                            class: 'kt-checkbox--solid'
                        },
                        textAlign: 'center',
                    },
                    {
                        field: \"number\",
                        title: \"";
            // line 2979
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["ID"]);
            echo "\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                        template: function (data) {
                            return data.id;
                        },
                    },
                    {
                        field: \"name\",
                        title: \"";
            // line 2989
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Name"]);
            echo "\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                    },
                    {
                        field: \"place\",
                        title: \"";
            // line 2996
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Place"]);
            echo "\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                    },
                    {
                        field: \"Actions\",
                        width: 'auto',
                        title: \"";
            // line 3004
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Actions"]);
            echo "\",
                        sortable: false,
                        autoHide: false,
                        overflow: 'visible',
                        template: function (data) {
                                ";
            // line 3009
            if ((twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "states", 1 => "u"], "method", false, false, false, 3009) || twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "states", 1 => "d"], "method", false, false, false, 3009))) {
                // line 3010
                echo "                                    return '' +
                                    '<div class=\"btn-group btn-group\" role=\"group\" aria-label=\"...\">'+
                                        ";
                // line 3012
                if (twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "states", 1 => "u"], "method", false, false, false, 3012)) {
                    // line 3013
                    echo "                                        '<a href=\"";
                    echo url("dashboard/settings/states");
                    echo "/'+data.id+'/edit\" class=\"btn btn-info btn-sm\"><i class=\"flaticon-edit\"></i>&nbsp;";
                    echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Edit"]);
                    echo "</button>'+
                                        ";
                }
                // line 3015
                echo "                                        ";
                if (twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "states", 1 => "d"], "method", false, false, false, 3015)) {
                    // line 3016
                    echo "                                        '<a href=\"javascript:void(0);\" class=\"btn btn-danger btn-sm delete_record kt-font-light\" rel=\"'+data.id+'\" data-type=\"states\"><i class=\"flaticon2-delete\"></i>&nbsp;";
                    echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Delete"]);
                    echo "</a>'+
                                        ";
                }
                // line 3018
                echo "                                    '</div>';
                                ";
            } else {
                // line 3020
                echo "                                    return '-';
                                ";
            }
            // line 3022
            echo "                        },
                    }
                ]
            ";
        } elseif ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source,         // line 3025
($context["this"] ?? null), "param", [], "any", false, false, false, 3025), "page", [], "any", false, false, false, 3025) == "cities")) {
            // line 3026
            echo "                // datasource definition
                data: {
                    type: 'remote',
                    source: {
                        read: {
                            url: '";
            // line 3031
            echo url("api/cities");
            echo "',
                        },
                    },
                    pageSize: 10, // display 20 records per page
                    serverPaging: true,
                    serverFiltering: true,
                    serverSorting: true,
                },
                // columns definition
                columns: [
                    {
                        field: 'id',
                        title: '#',
                        sortable: false,
                        width: 20,
                        selector: {
                            class: 'kt-checkbox--solid'
                        },
                        textAlign: 'center',
                    },
                    {
                        field: \"number\",
                        title: \"";
            // line 3053
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["ID"]);
            echo "\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                        template: function (data) {
                            return data.id;
                        },
                    },
                    {
                        field: \"name\",
                        title: \"";
            // line 3063
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Name"]);
            echo "\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                    },
                    {
                        field: \"place\",
                        title: \"";
            // line 3070
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Place"]);
            echo "\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                    },
                    {
                        field: \"Actions\",
                        width: 'auto',
                        title: \"";
            // line 3078
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Actions"]);
            echo "\",
                        sortable: false,
                        autoHide: false,
                        overflow: 'visible',
                        template: function (data) {
                                ";
            // line 3083
            if ((twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "cities", 1 => "u"], "method", false, false, false, 3083) || twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "cities", 1 => "d"], "method", false, false, false, 3083))) {
                // line 3084
                echo "                                    return '' +
                                    '<div class=\"btn-group btn-group\" role=\"group\" aria-label=\"...\">'+
                                        ";
                // line 3086
                if (twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "cities", 1 => "u"], "method", false, false, false, 3086)) {
                    // line 3087
                    echo "                                        '<a href=\"";
                    echo url("dashboard/settings/cities");
                    echo "/'+data.id+'/edit\" class=\"btn btn-info btn-sm\"><i class=\"flaticon-edit\"></i>&nbsp;";
                    echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Edit"]);
                    echo "</button>'+
                                        ";
                }
                // line 3089
                echo "                                        ";
                if (twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "cities", 1 => "d"], "method", false, false, false, 3089)) {
                    // line 3090
                    echo "                                        '<a href=\"javascript:void(0);\" class=\"btn btn-danger btn-sm delete_record kt-font-light\" rel=\"'+data.id+'\" data-type=\"cities\"><i class=\"flaticon2-delete\"></i>&nbsp;";
                    echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Delete"]);
                    echo "</a>'+
                                        ";
                }
                // line 3092
                echo "                                    '</div>';
                                ";
            } else {
                // line 3094
                echo "                                    return '-';
                                ";
            }
            // line 3096
            echo "                        },
                    }
                ]
            ";
        } elseif ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source,         // line 3099
($context["this"] ?? null), "param", [], "any", false, false, false, 3099), "page", [], "any", false, false, false, 3099) == "areas")) {
            // line 3100
            echo "                // datasource definition
                data: {
                    type: 'remote',
                    source: {
                        read: {
                            url: '";
            // line 3105
            echo url("api/areas");
            echo "',
                        },
                    },
                    pageSize: 10, // display 20 records per page
                    serverPaging: true,
                    serverFiltering: true,
                    serverSorting: true,
                },
                // columns definition
                columns: [
                    {
                        field: 'id',
                        title: '#',
                        sortable: false,
                        width: 20,
                        selector: {
                            class: 'kt-checkbox--solid'
                        },
                        textAlign: 'center',
                    },
                    {
                        field: \"number\",
                        title: \"";
            // line 3127
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["ID"]);
            echo "\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                        template: function (data) {
                            return data.id;
                        },
                    },
                    {
                        field: \"name\",
                        title: \"";
            // line 3137
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Name"]);
            echo "\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                    },
                    {
                        field: \"place\",
                        title: \"";
            // line 3144
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Place"]);
            echo "\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                    },
                    {
                        field: \"Actions\",
                        width: 'auto',
                        title: \"";
            // line 3152
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Actions"]);
            echo "\",
                        sortable: false,
                        autoHide: false,
                        overflow: 'visible',
                        template: function (data) {
                                ";
            // line 3157
            if ((twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "areas", 1 => "u"], "method", false, false, false, 3157) || twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "areas", 1 => "d"], "method", false, false, false, 3157))) {
                // line 3158
                echo "                                    return '' +
                                    '<div class=\"btn-group btn-group\" role=\"group\" aria-label=\"...\">'+
                                        ";
                // line 3160
                if (twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "areas", 1 => "u"], "method", false, false, false, 3160)) {
                    // line 3161
                    echo "                                        '<a href=\"";
                    echo url("dashboard/settings/areas");
                    echo "/'+data.id+'/edit\" class=\"btn btn-info btn-sm\"><i class=\"flaticon-edit\"></i>&nbsp;";
                    echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Edit"]);
                    echo "</button>'+
                                        ";
                }
                // line 3163
                echo "                                        ";
                if (twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "areas", 1 => "d"], "method", false, false, false, 3163)) {
                    // line 3164
                    echo "                                        '<a href=\"javascript:void(0);\" class=\"btn btn-danger btn-sm delete_record kt-font-light\" rel=\"'+data.id+'\" data-type=\"areas\"><i class=\"flaticon2-delete\"></i>&nbsp;";
                    echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Delete"]);
                    echo "</a>'+
                                        ";
                }
                // line 3166
                echo "                                    '</div>';
                                ";
            } else {
                // line 3168
                echo "                                    return '-';
                                ";
            }
            // line 3170
            echo "                        },
                    }
                ]
            ";
        } elseif ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source,         // line 3173
($context["this"] ?? null), "param", [], "any", false, false, false, 3173), "page", [], "any", false, false, false, 3173) == "fees")) {
            // line 3174
            echo "                // datasource definition
                data: {
                    type: 'remote',
                    source: {
                        read: {
                            url: '";
            // line 3179
            echo url("api/fees");
            echo "',
                        },
                    },
                    pageSize: 10, // display 20 records per page
                    serverPaging: true,
                    serverFiltering: true,
                    serverSorting: true,
                },
                // columns definition
                columns: [
                    {
                        field: 'id',
                        title: '#',
                        sortable: false,
                        width: 20,
                        selector: {
                            class: 'kt-checkbox--solid'
                        },
                        textAlign: 'center',
                    },
                    {
                        field: \"from\",
                        title: \"";
            // line 3201
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["From"]);
            echo "\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                    },
                    {
                        field: \"to\",
                        title: \"";
            // line 3208
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["To"]);
            echo "\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                    },
                    {
                        field: \"Actions\",
                        width: 'auto',
                        title: \"";
            // line 3216
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Actions"]);
            echo "\",
                        sortable: false,
                        autoHide: false,
                        overflow: 'visible',
                        template: function (data) {
                                ";
            // line 3221
            if ((twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "fees", 1 => "u"], "method", false, false, false, 3221) || twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "fees", 1 => "d"], "method", false, false, false, 3221))) {
                // line 3222
                echo "                                    return '' +
                                    '<div class=\"btn-group btn-group\" role=\"group\" aria-label=\"...\">'+
                                        ";
                // line 3224
                if (twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "fees", 1 => "u"], "method", false, false, false, 3224)) {
                    // line 3225
                    echo "                                        '<a href=\"";
                    echo url("dashboard/settings/fees");
                    echo "/'+data.id+'/edit\" class=\"btn btn-info btn-sm\"><i class=\"flaticon-edit\"></i>&nbsp;";
                    echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Edit"]);
                    echo "</button>'+
                                        ";
                }
                // line 3227
                echo "                                        ";
                if (twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "fees", 1 => "d"], "method", false, false, false, 3227)) {
                    // line 3228
                    echo "                                        '<a href=\"javascript:void(0);\" class=\"btn btn-danger btn-sm delete_record kt-font-light\" rel=\"'+data.id+'\" data-type=\"fees\"><i class=\"flaticon2-delete\"></i>&nbsp;";
                    echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Delete"]);
                    echo "</a>'+
                                        ";
                }
                // line 3230
                echo "                                    '</div>';
                                ";
            } else {
                // line 3232
                echo "                                    return '-';
                                ";
            }
            // line 3234
            echo "                        },
                    }
                ]
            ";
        } elseif ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source,         // line 3237
($context["this"] ?? null), "param", [], "any", false, false, false, 3237), "page", [], "any", false, false, false, 3237) == "employees")) {
            // line 3238
            echo "                // datasource definition
                data: {
                    type: 'remote',
                    source: {
                        read: {
                            url: '";
            // line 3243
            echo url("api/employees");
            echo "',
                        },
                    },
                    pageSize: 10, // display 20 records per page
                    serverPaging: true,
                    serverFiltering: true,
                    serverSorting: true,
                },
                // columns definition
                columns: [
                    {
                        field: 'id',
                        title: '#',
                        sortable: false,
                        width: 20,
                        selector: {
                            class: 'kt-checkbox--solid'
                        },
                        textAlign: 'center',
                    },
                    {
                        field: \"name\",
                        title: \"";
            // line 3265
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Name"]);
            echo "\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                    },
                    {
                        field: \"role\",
                        title: \"";
            // line 3272
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Role"]);
            echo "\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                    },
                    {
                        field: \"groups\",
                        title: \"";
            // line 3279
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Departments"]);
            echo "\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                        template: function (data) {
                            if(data.groups){
                                var i;
                                var text = '-';
                                for (i = 0; i < data.groups.length; i++) {
                                    if(text == '-'){
                                        text = data.groups[i];
                                    }else{
                                        if(i < data.groups.length){
                                            text += ', ';
                                        }
                                        text += data.groups[i];
                                    }
                                }
                                return text;
                            }else{
                                return '-';
                            }
                        },
                    },
                    {
                        field: \"Actions\",
                        width: 'auto',
                        title: \"";
            // line 3306
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Actions"]);
            echo "\",
                        sortable: false,
                        autoHide: false,
                        overflow: 'visible',
                        template: function (data) {
                                ";
            // line 3311
            if ((twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "employees", 1 => "u"], "method", false, false, false, 3311) || twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "employees", 1 => "d"], "method", false, false, false, 3311))) {
                // line 3312
                echo "                                    return '' +
                                    '<div class=\"btn-group btn-group\" role=\"group\" aria-label=\"...\">'+
                                        ";
                // line 3314
                if (twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "employees", 1 => "u"], "method", false, false, false, 3314)) {
                    // line 3315
                    echo "                                        '<a href=\"";
                    echo url("dashboard/settings/employees");
                    echo "/'+data.id+'/edit\" class=\"btn btn-info btn-sm\"><i class=\"flaticon-edit\"></i>&nbsp;";
                    echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Edit"]);
                    echo "</button>'+
                                        ";
                }
                // line 3317
                echo "                                        ";
                if (twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "employees", 1 => "d"], "method", false, false, false, 3317)) {
                    // line 3318
                    echo "                                        '<a href=\"javascript:void(0);\" class=\"btn btn-danger btn-sm delete_record kt-font-light\" rel=\"'+data.id+'\" data-type=\"employees\"><i class=\"flaticon2-delete\"></i>&nbsp;";
                    echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Delete"]);
                    echo "</a>'+
                                        ";
                }
                // line 3320
                echo "                                    '</div>';
                                ";
            } else {
                // line 3322
                echo "                                    return '-';
                                ";
            }
            // line 3324
            echo "                        },
                    }
                ]
            ";
        } elseif ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source,         // line 3327
($context["this"] ?? null), "param", [], "any", false, false, false, 3327), "page", [], "any", false, false, false, 3327) == "backup")) {
            // line 3328
            echo "                // datasource definition
                data: {
                    type: 'remote',
                    source: {
                        read: {
                            url: '";
            // line 3333
            echo url("api/backups");
            echo "',
                        },
                    },
                    pageSize: 10, // display 20 records per page
                    serverPaging: true,
                    serverFiltering: true,
                    serverSorting: true,
                },
                // columns definition
                columns: [
                    {
                        field: \"fileInfo\",
                        title: \"";
            // line 3345
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Name"]);
            echo "\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                        template: function (data) {
                            return '<a href=\"";
            // line 3350
            echo twig_escape_filter($this->env, twig_replace_filter($this->extensions['System\Twig\Extension']->mediaFilter("app/uploads/panakour-backup"), ["app/media/" => ""]), "html", null, true);
            echo "/' + data.fileInfo.basename + '\" download>' + data.fileInfo.basename + '</a>';
                        },
                    },
                    {
                        field: \"size\",
                        title: \"";
            // line 3355
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Size"]);
            echo "\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                        template: function (data) {
                            return data.size + ' ";
            // line 3360
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["KB"]);
            echo "';
                        },
                    },
                    {
                        field: \"lastModified\",
                        title: \"";
            // line 3365
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Created Date"]);
            echo "\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                    },
                    {
                        field: \"Actions\",
                        width: 'auto',
                        title: \"";
            // line 3373
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Actions"]);
            echo "\",
                        sortable: false,
                        autoHide: false,
                        overflow: 'visible',
                        template: function (data) {
                                ";
            // line 3378
            if (twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "backups", 1 => "d"], "method", false, false, false, 3378)) {
                // line 3379
                echo "                                    return '' +
                                    '<div class=\"btn-group btn-group\" role=\"group\" aria-label=\"...\">'+
                                        ";
                // line 3381
                if (twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "hasUserPermission", [0 => "backups", 1 => "d"], "method", false, false, false, 3381)) {
                    // line 3382
                    echo "                                        '<a href=\"javascript:void(0);\" class=\"btn btn-danger btn-sm delete_record kt-font-light\" rel=\"'+data.fileInfo.basename+'\" data-type=\"backup\"><i class=\"flaticon2-delete\"></i>&nbsp;";
                    echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Delete"]);
                    echo "</a>'+
                                        ";
                }
                // line 3384
                echo "                                    '</div>';
                                ";
            } else {
                // line 3386
                echo "                                    return '-';
                                ";
            }
            // line 3388
            echo "                        },
                    }
                ]
            ";
        }
        // line 3392
        echo "        });
    };

    // search
    var search = function () {
        \$('#filter_form select,#filter_form input').each(function(){
            \$(this).on('change', function () {
                datatable.search(\$(this).val().toLowerCase(), \$(this).attr('name'));
            });
        });
        \$('#reset').on('click', function () {
            datatable.destroy();
            \$('#filter_form select,#filter_form input').each(function(){
                \$(this).val('');
            });
            \$('#filter_form select').each(function(){
                \$(this).selectpicker(\"refresh\");
            });
            init();
        });
    };

    // selection
    var selection = function () {
        // init form controls
        //\$('#kt_form_status, #kt_form_type').selectpicker();

        // event handler on check and uncheck on records
        datatable.on('kt-datatable--on-check kt-datatable--on-uncheck kt-datatable--on-layout-updated', function (e) {
            var checkedNodes = datatable.rows('.kt-datatable__row--active').nodes(); // get selected records
            var count = checkedNodes.length; // selected records count

            \$('#kt_subheader_group_selected_rows').html(count);

            if (count > 0) {
                \$('#kt_subheader_search').addClass('kt-hidden');
                \$('#kt_subheader_group_actions').removeClass('kt-hidden');
            } else {
                \$('#kt_subheader_search').removeClass('kt-hidden');
                \$('#kt_subheader_group_actions').addClass('kt-hidden');
            }
        });
    }

    // selected records status update
    var selectedStatusUpdate = function () {
        \$('#kt_subheader_group_actions_status_change').on('click', \"[data-toggle='status-change']\", function () {
            var status = \$(this).find(\".kt-nav__link-text\").html();

            // fetch selected IDs
            var ids = datatable.rows('.kt-datatable__row--active').nodes().find('.kt-checkbox--single > [type=\"checkbox\"]').map(function (i, chk) {
                return \$(chk).val();
            });

            if (ids.length > 0) {
                // learn more: //sweetalert2.github.io/
                swal.fire({
                    buttonsStyling: false,

                    html: \"";
        // line 3451
        echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Are you sure to update"]);
        echo " \" + ids.length + \" ";
        echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["selected records status to"]);
        echo " \" + status + \" ?\",
                    type: \"info\",

                    confirmButtonText: \"";
        // line 3454
        echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Yes, update"]);
        echo "!\",
                    confirmButtonClass: \"btn btn-sm btn-bold btn-brand\",

                    showCancelButton: true,
                    cancelButtonText: \"";
        // line 3458
        echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["No, cancel"]);
        echo "\",
                    cancelButtonClass: \"btn btn-sm btn-bold btn-default\"
                }).then(function (result) {
                    if (result.value) {
                        swal.fire({
                            title: '";
        // line 3463
        echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Deleted"]);
        echo "!',
                            text: '";
        // line 3464
        echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Your selected records statuses have been updated"]);
        echo "!',
                            type: 'success',
                            buttonsStyling: false,
                            confirmButtonText: \"";
        // line 3467
        echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["OK"]);
        echo "\",
                            confirmButtonClass: \"btn btn-sm btn-bold btn-brand\",
                        })
                        // result.dismiss can be 'cancel', 'overlay',
                        // 'close', and 'timer'
                    } else if (result.dismiss === 'cancel') {
                        swal.fire({
                            title: '";
        // line 3474
        echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Cancelled"]);
        echo "',
                            text: '";
        // line 3475
        echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["You selected records statuses have not been updated"]);
        echo "!',
                            type: 'error',
                            buttonsStyling: false,
                            confirmButtonText: \"";
        // line 3478
        echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["OK"]);
        echo "\",
                            confirmButtonClass: \"btn btn-sm btn-bold btn-brand\",
                        });
                    }
                });
            }
        });
    }

    // selected records delete
    var selectedDelete = function () {
        \$('#kt_subheader_group_actions_delete_all').on('click', function () {
            // fetch selected IDs
            var selected = [];
            var type    = \$('.delete_record').attr('data-type');
            var ids = datatable.rows('.kt-datatable__row--active').nodes().find('.kt-checkbox--single > [type=\"checkbox\"]').map(function (i, chk) {
                selected[\$(chk).val()] = \$(chk).val();
                return \$(chk).val();
            });

            if (ids.length > 0) {
                // learn more: //sweetalert2.github.io/
                swal.fire({
                    buttonsStyling: false,

                    text: \"";
        // line 3503
        echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Are you sure to delete"]);
        echo " \" + ids.length + \" ";
        echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["selected records ?"]);
        echo "\",
                    type: \"danger\",

                    confirmButtonText: \"";
        // line 3506
        echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Yes, delete!"]);
        echo "\",
                    confirmButtonClass: \"btn btn-sm btn-bold btn-danger\",

                    showCancelButton: true,
                    cancelButtonText: '";
        // line 3510
        echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["No, cancel"]);
        echo "',
                    cancelButtonClass: \"btn btn-sm btn-bold btn-brand\"
                }).then(function (result) {
                    if (result.value) {
                        \$.request('onDelete', {
                            data: {id: selected,type: type},
                            success: function(data) {
                                swal.fire({
                                    title: '";
        // line 3518
        echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Deleted!"]);
        echo "',
                                    text: '";
        // line 3519
        echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Your selected records have been deleted! :("]);
        echo "',
                                    type: 'success',
                                    buttonsStyling: false,
                                    confirmButtonText: '";
        // line 3522
        echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["OK"]);
        echo "',
                                    confirmButtonClass: \"btn btn-sm btn-bold btn-brand\",
                                });
                                datatable.reload();
                            }
                        });
                        // result.dismiss can be 'cancel', 'overlay',
                        // 'close', and 'timer'
                    } else if (result.dismiss === 'cancel') {
                        swal.fire({
                            title: '";
        // line 3532
        echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Cancelled"]);
        echo "',
                            text: '";
        // line 3533
        echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["You selected records have not been deleted! :)"]);
        echo "',
                            type: 'error',
                            buttonsStyling: false,
                            confirmButtonText: '";
        // line 3536
        echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["OK"]);
        echo "',
                            confirmButtonClass: \"btn btn-sm btn-bold btn-brand\",
                        });
                    }
                });
            }
        });


        \$('body').on('click','.delete_record',function(){
            var id      = \$(this).attr('rel');
            var type    = \$(this).attr('data-type');
            swal.fire({
                buttonsStyling: false,

                text: \"";
        // line 3551
        echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Are you sure to delete this item ?"]);
        echo "\",
                type: \"danger\",

                confirmButtonText: \"";
        // line 3554
        echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Yes, delete!"]);
        echo "\",
                confirmButtonClass: \"btn btn-sm btn-bold btn-danger\",

                showCancelButton: true,
                cancelButtonText: '";
        // line 3558
        echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["No, cancel"]);
        echo "',
                cancelButtonClass: \"btn btn-sm btn-bold btn-brand\"
            }).then(function (result) {
                if (result.value) {
                    \$.request('onDelete', {
                        data: {id: id, type: type},
                        success: function(data) {

                            swal.fire({
                                title: '";
        // line 3567
        echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Deleted!"]);
        echo "',
                                text: '";
        // line 3568
        echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Your selected record has been deleted! :("]);
        echo "',
                                type: 'success',
                                buttonsStyling: false,
                                confirmButtonText: '";
        // line 3571
        echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["OK"]);
        echo "',
                                confirmButtonClass: \"btn btn-sm btn-bold btn-brand\",
                            });
                            datatable.reload();
                        }
                    });
                    // result.dismiss can be 'cancel', 'overlay',
                    // 'close', and 'timer'
                } else if (result.dismiss === 'cancel') {
                    swal.fire({
                        title: '";
        // line 3581
        echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Cancelled"]);
        echo "',
                        text: '";
        // line 3582
        echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["You selected record has not been deleted! :)"]);
        echo "',
                        type: 'error',
                        buttonsStyling: false,
                        confirmButtonText: '";
        // line 3585
        echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["OK"]);
        echo "',
                        confirmButtonClass: \"btn btn-sm btn-bold btn-brand\",
                    });
                }
            });
        });
    }

    var updateTotal = function () {
        datatable.on('kt-datatable--on-layout-updated', function () {
            \$('#kt_subheader_total').html(datatable.getTotalRows() + ' ";
        // line 3595
        echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Total"]);
        echo "');
        });
    };

    var reload = function () {
        datatable.reload();
    };

    return {
        // public functions
        init: function () {
            init();
            search();
            selection();
            selectedStatusUpdate();
            selectedDelete();
            updateTotal();
        },

        reload: function(){
            reload();
        }
    };
}();
var KTDatatablesExtensions = function() {

\tvar initTable1 = function() {
\t\tvar table = \$('#kt_table_1');

        ";
        // line 3624
        if ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "param", [], "any", false, false, false, 3624), "page", [], "any", false, false, false, 3624) == "translate")) {
            // line 3625
            echo "    \t\t// begin first table
    \t\ttable.DataTable({
    \t\t\tresponsive: true,
                dom: \"<'row'<'col-md-6' f><'col-md-6 text-right'>>\\n\\t\\t\\t<'row'<'col-md-12'tr>>\\n\\t\\t\\t<'row'<'col-sm-12 col-md-5'i><'col-sm-12 col-md-7 dataTables_pager'>>\",
                language: {
                    lengthMenu:     \"";
            // line 3630
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Display"]);
            echo " _MENU_\",
                    emptyTable:     \"";
            // line 3631
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["No data available in table"]);
            echo "\",
                    info:           \"";
            // line 3632
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Showing"]);
            echo " _START_ ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["to"]);
            echo " _END_ ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["of"]);
            echo " _TOTAL_ ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["entries"]);
            echo "\",
                    infoEmpty:      \"";
            // line 3633
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Showing"]);
            echo " 0 ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["to"]);
            echo " 0 ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["of"]);
            echo " 0 ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["entries"]);
            echo "\",
                    loadingRecords: \"";
            // line 3634
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Loading"]);
            echo "...\",
                    processing:     \"";
            // line 3635
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Processing"]);
            echo "...\",
                    search:         \"";
            // line 3636
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Search"]);
            echo "\",
                    infoFiltered:   \"(";
            // line 3637
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["filtered from"]);
            echo " _MAX_ ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["total entries"]);
            echo ")\",
                },
                ajax: {
                    url: '";
            // line 3640
            echo url("api/translatemessages");
            echo "',
                    type: \"POST\",
                },
    \t\t\tdeferRender: true,
    \t\t\tscrollY: '500px',
    \t\t\tscrollCollapse: true,
    \t\t\tscroller: true,
    \t\t\tcolumns: [
        \t\t\t";
            // line 3648
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["languages"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["lang"]) {
                // line 3649
                echo "        \t\t\t\t{data: '";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["lang"], "name", [], "any", false, false, false, 3649), "html", null, true);
                echo "'},
        \t\t\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['lang'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 3651
            echo "    \t\t\t],
    \t\t});
        ";
        } elseif ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source,         // line 3653
($context["this"] ?? null), "param", [], "any", false, false, false, 3653), "page", [], "any", false, false, false, 3653) == "backup")) {
            // line 3654
            echo "            table.DataTable({
    \t\t\tresponsive: true,
                dom: \"<'row'<'col-md-6'><'col-md-6 text-right'>>\\n\\t\\t\\t<'row'<'col-md-12'tr>>\\n\\t\\t\\t<'row'<'col-sm-12 col-md-5'i><'col-sm-12 col-md-7 dataTables_pager'lp>>\",
                buttons: [
                    {extend: 'copy',exportOptions: {columns: [2,3,4,5]}},
                    {extend: 'excel',exportOptions: {columns: [2,3,4,5]}},
                    {extend: 'pdf',exportOptions: {columns: [2,3,4,5]}},
                    {extend: 'print',exportOptions: {columns: [2,3,4,5]}
                }],
                lengthMenu: [5, 10, 25, 50],
                pageLength: 10,
                language: {
                    lengthMenu: \"";
            // line 3666
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Display"]);
            echo " _MENU_\",
                    emptyTable:     \"";
            // line 3667
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["No data available in table"]);
            echo "\",
                    info:           \"";
            // line 3668
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Showing"]);
            echo " _START_ ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["to"]);
            echo " _END_ ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["of"]);
            echo " _TOTAL_ ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["entries"]);
            echo "\",
                    infoEmpty:      \"";
            // line 3669
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Showing"]);
            echo " 0 ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["to"]);
            echo " 0 ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["of"]);
            echo " 0 ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["entries"]);
            echo "\",
                    loadingRecords: \"";
            // line 3670
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Loading"]);
            echo "...\",
                    processing:     \"";
            // line 3671
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Processing"]);
            echo "...\",
                    search:         \"";
            // line 3672
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Search"]);
            echo "\",
                    infoFiltered:   \"(";
            // line 3673
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["filtered from"]);
            echo " _MAX_ ";
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["total entries"]);
            echo ")\",
                },
                searchDelay: 500,
                processing: true,
                serverSide: true,
                ajax: {
                    url: '";
            // line 3679
            echo url("api/backups");
            echo "',
                    type: \"POST\",
                },
                columns: [
                {
                    data: \"fileInfo\",
                    'orderable':false,
                    'render': function (data, type, full, meta){
                        return '<a href=\"";
            // line 3687
            echo twig_escape_filter($this->env, twig_replace_filter($this->extensions['System\Twig\Extension']->mediaFilter("app/uploads/panakour-backup"), ["app/media/" => ""]), "html", null, true);
            echo "/' + full.fileInfo.basename + '\" download>' + full.fileInfo.basename + '</a>';
                    }
                },
                {
                    data: \"size\",
                    'orderable':false,
                    'render': function (data, type, full, meta){
                        return full.size + ' ";
            // line 3694
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["KB"]);
            echo "';
                    }
                },
                {
                    data: \"lastModified\",
                    'orderable':true
                },
                {
                    data: \"actions\",
                    'orderable':false
                }],
                columnDefs: [{
                   'targets': -1,
                   'searchable':false,
                   'orderable':false,
                   'className': 'dt-body-center',
                   'render': function (data, type, full, meta){
                        return '<div class=\"btn-group m-btn-group\" role=\"group\" aria-label=\"...\"><button class=\"btn btn-danger delete_record\" rel=\"' + full.fileInfo.basename + '\" data-type=\"backup\" ><span><i class=\"la la-times\"></i> <span>";
            // line 3711
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Delete"]);
            echo "</span></span></button></div>';
                    }
                }]
            });
        ";
        }
        // line 3716
        echo "




\t};

\treturn {

\t\t//main function to initiate the module
\t\tinit: function() {
\t\t\tinitTable1();
\t\t},

\t};

}();

// Class definition
var KTUserProfile = function () {
\t// Base elements
\tvar avatar;
\tvar offcanvas;

\t// Private functions
\tvar initAside = function () {
\t\t// Mobile offcanvas for mobile mode
\t\toffcanvas = new KTOffcanvas('kt_user_profile_aside', {
            overlay: true,
            baseClass: 'kt-app__aside',
            closeBy: 'kt_user_profile_aside_close',
            toggleBy: 'kt_subheader_mobile_toggle'
        });
        \$('#kt_subheader_mobile_toggle').show();
\t}

\tvar initUserForm = function() {
\t\tavatar = new KTAvatar('kt_user_avatar');
\t}

\treturn {
\t\t// public functions
\t\tinit: function() {
\t\t\tinitAside();
\t\t\tinitUserForm();
\t\t}
\t};
}();

KTUtil.ready(function() {
\tKTUserProfile.init();

    \$( \"#kt_form\" ).validate({
        ignore: \":hidden\",
        invalidHandler: function(event, validator) {
            var alert = \$('#kt-form_msg');
            alert.removeClass('kt-hidden').show();
            KTUtil.scrollTop();
        },
    });

    ";
        // line 3777
        if (((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "param", [], "any", false, false, false, 3777), "page", [], "any", false, false, false, 3777) == "general") || twig_test_empty(twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "param", [], "any", false, false, false, 3777), "page", [], "any", false, false, false, 3777)))) {
            // line 3778
            echo "        \$('body').on('changed.bs.select', '#currency', function(e, clickedIndex, newValue, oldValue){
            var selected = \$(e.currentTarget).val();
            if(selected != ''){
                \$.request('onGetCurrency', {
                    data: {id: selected},
                    success: function(data) {
                        if(data.currency.place_symbol_before == true){
                            \$('#place_symbol_before').prop('checked', true);
                        }else {
                            \$('#place_symbol_before').prop('checked', false);
                        }
                        if(data.currency.with_space == true){
                            \$('#with_space').prop('checked', true);
                        }else {
                            \$('#with_space').prop('checked', false);
                        }
                        \$('#decimal_point').val(data.currency.decimal_point);
                        \$('#thousand_separator').val(data.currency.thousand_separator);
                        \$('#initbiz_money_fraction_digits').val(data.currency.initbiz_money_fraction_digits);
                    }
                });
            }
        });
    ";
        } elseif ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source,         // line 3801
($context["this"] ?? null), "param", [], "any", false, false, false, 3801), "page", [], "any", false, false, false, 3801) == "company")) {
            // line 3802
            echo "        \$(\"#address\").geocomplete({
            map: \"#map_canvas\",
            mapOptions: {
                zoom: 18
            },
            markerOptions: {
                draggable: true
            },
            details: \".location-complete\",
            ";
            // line 3811
            if (twig_get_attribute($this->env, $this->source, ($context["company"] ?? null), "lat", [], "any", false, false, false, 3811)) {
                // line 3812
                echo "                location: [";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["company"] ?? null), "lat", [], "any", false, false, false, 3812), "html", null, true);
                echo ",";
                echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["company"] ?? null), "lng", [], "any", false, false, false, 3812), "html", null, true);
                echo "]
            ";
            }
            // line 3814
            echo "        });
        \$(\"#address\").bind(\"geocode:dragged\", function(event, latLng){
            \$(\"input[name=lat]\").val(latLng.lat());
            \$(\"input[name=lng]\").val(latLng.lng());
            \$(\"#reset\").show();
        });

        var input = document.getElementById('kt_tagify_2');
        new Tagify(input);
    ";
        } elseif ((((((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source,         // line 3823
($context["this"] ?? null), "param", [], "any", false, false, false, 3823), "page", [], "any", false, false, false, 3823) == "languages") || (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "param", [], "any", false, false, false, 3823), "page", [], "any", false, false, false, 3823) == "departments")) || (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "param", [], "any", false, false, false, 3823), "page", [], "any", false, false, false, 3823) == "employees")) || (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "param", [], "any", false, false, false, 3823), "page", [], "any", false, false, false, 3823) == "currencies")) || (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "param", [], "any", false, false, false, 3823), "page", [], "any", false, false, false, 3823) == "packaging"))) {
            // line 3824
            echo "        KTAppUserListDatatable.init();
    ";
        } elseif ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source,         // line 3825
($context["this"] ?? null), "param", [], "any", false, false, false, 3825), "page", [], "any", false, false, false, 3825) == "sms")) {
            // line 3826
            echo "        \$('body').on('click', '#enable_sms_notification', function(){
            \$('#sms_notification').addClass('kt-hidden');
            if(\$(this).is(':checked')){
                \$('#sms_notification').removeClass('kt-hidden');
            }
        });
        \$('body').on('changed.bs.select', '.gateway', function(e, clickedIndex, newValue, oldValue){
            var selected = \$(e.currentTarget).val();
            if(selected != ''){
                if(selected == 'clickatell'){
                    \$('.clickatell').removeClass('kt-hidden');
                }else{
                    \$('.clickatell').addClass('kt-hidden');
                }
            }
        });
    ";
        } elseif ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source,         // line 3842
($context["this"] ?? null), "param", [], "any", false, false, false, 3842), "page", [], "any", false, false, false, 3842) == "notifications")) {
            // line 3843
            echo "        \$('body').on('changed.bs.select', '.provider', function(e, clickedIndex, newValue, oldValue){
            var selected = \$(e.currentTarget).val();
            if(selected != ''){
                if(selected == 'pusher'){
                    \$('.pusher').removeClass('kt-hidden');
                }else{
                    \$('.pusher').addClass('kt-hidden');
                }
            }
        });
        \$('body').on('click', '#enable_live_notification', function(){
            \$('#live_notification').addClass('kt-hidden');
            if(\$(this).is(':checked')){
                \$('#live_notification').removeClass('kt-hidden');
            }
        });
        \$('body').on('click', '.select_departments', function(){
            \$('.show_departments').addClass('kt-hidden');
            if(\$(this).is(':checked')){
                \$('.show_departments').removeClass('kt-hidden');
            }
        });
        \$('body').on('click', '.select_employees', function(){
            \$('.show_employees').addClass('kt-hidden');
            if(\$(this).is(':checked')){
                \$('.show_employees').removeClass('kt-hidden');
            }
        });
    ";
        } elseif ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source,         // line 3871
($context["this"] ?? null), "param", [], "any", false, false, false, 3871), "page", [], "any", false, false, false, 3871) == "backup")) {
            // line 3872
            echo "        KTAppUserListDatatable.init();
        \$('body').on('click', '#database', function(e){
            swal.fire({
                title: '";
            // line 3875
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Error"]);
            echo "',
                text: '";
            // line 3876
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["This feature is not allowed in demo"]);
            echo "',
                type: 'error',
                buttonsStyling: false,
                confirmButtonText: '";
            // line 3879
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["OK"]);
            echo "',
                confirmButtonClass: \"btn btn-sm btn-bold btn-brand\",
            });
        });
        \$('body').on('click', '#files', function(e){
            swal.fire({
                title: '";
            // line 3885
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Error"]);
            echo "',
                text: '";
            // line 3886
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["This feature is not allowed in demo"]);
            echo "',
                type: 'error',
                buttonsStyling: false,
                confirmButtonText: '";
            // line 3889
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["OK"]);
            echo "',
                confirmButtonClass: \"btn btn-sm btn-bold btn-brand\",
            });
        });
        \$('body').on('click', '#whole', function(e){
            swal.fire({
                title: '";
            // line 3895
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["Error"]);
            echo "',
                text: '";
            // line 3896
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["This feature is not allowed in demo"]);
            echo "',
                type: 'error',
                buttonsStyling: false,
                confirmButtonText: '";
            // line 3899
            echo call_user_func_array($this->env->getFilter('__')->getCallable(), ["OK"]);
            echo "',
                confirmButtonClass: \"btn btn-sm btn-bold btn-brand\",
            });
        });
        window.onbeforeunload = function() {
              return \"Did you save your stuff?\"
        }
    ";
        } elseif ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source,         // line 3906
($context["this"] ?? null), "param", [], "any", false, false, false, 3906), "page", [], "any", false, false, false, 3906) == "fees")) {
            // line 3907
            echo "        \$('.bootstrap-touchspin-vertical-btn').TouchSpin({
            buttondown_class: 'btn btn-secondary',
            buttonup_class: 'btn btn-secondary',
            verticalbuttons: true,
            verticalup: '<i class=\"la la-plus\"></i>',
            verticaldown: '<i class=\"la la-minus\"></i>'
        });
        KTAppUserListDatatable.init();
    ";
        } elseif ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source,         // line 3915
($context["this"] ?? null), "param", [], "any", false, false, false, 3915), "page", [], "any", false, false, false, 3915) == "translate")) {
            // line 3916
            echo "        // Activate an inline edit on click of a table cell
        \$('#kt_table_1').on( 'click', 'tbody td .translate', function (e) {
            if(\$(this).find('.inline_edit').length == 0){
                \$(this).html('<input type=\"text\" class=\"form-control inline_edit\" value=\"'+\$(this).html()+'\" />');
                \$('.inline_edit').focus().select();
            }
        });
        \$('#kt_table_1').on('change', '.inline_edit', function(e){
            var element = \$(this);
            var label = element.parent('.translate');
            label.addClass('kt-spinner kt-spinner--right kt-spinner--sm kt-spinner--success');
            var id = label.attr('rel');
            var lang = label.attr('data-language');
             \$.request('onTranslate', {
                 data: {translate: \$(this).val(), lang: lang, id: id},
                 success: function(response, status, xhr, \$form) {
                     label.removeClass('kt-spinner kt-spinner--right kt-spinner--sm kt-spinner--success');
                     element.replaceWith(element.val());
                 }
             });
        });
        \$('#kt_table_1').on('blur', '.inline_edit', function(e){
            var element = \$(this);
            element.replaceWith(element.val());
        });
    \tKTDatatablesExtensions.init();
    ";
        } elseif (((((((((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source,         // line 3942
($context["this"] ?? null), "param", [], "any", false, false, false, 3942), "page", [], "any", false, false, false, 3942) == "statuses") || (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "param", [], "any", false, false, false, 3942), "page", [], "any", false, false, false, 3942) == "treasury")) || (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "param", [], "any", false, false, false, 3942), "page", [], "any", false, false, false, 3942) == "categories")) || (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "param", [], "any", false, false, false, 3942), "page", [], "any", false, false, false, 3942) == "couriers")) || (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "param", [], "any", false, false, false, 3942), "page", [], "any", false, false, false, 3942) == "deliverytimes")) || (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "param", [], "any", false, false, false, 3942), "page", [], "any", false, false, false, 3942) == "shipping")) || (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "param", [], "any", false, false, false, 3942), "page", [], "any", false, false, false, 3942) == "branches")) || (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "param", [], "any", false, false, false, 3942), "page", [], "any", false, false, false, 3942) == "cars"))) {
            // line 3943
            echo "        KTAppUserListDatatable.init();
    ";
        } elseif (((((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source,         // line 3944
($context["this"] ?? null), "param", [], "any", false, false, false, 3944), "page", [], "any", false, false, false, 3944) == "areas") || (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "param", [], "any", false, false, false, 3944), "page", [], "any", false, false, false, 3944) == "cities")) || (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "param", [], "any", false, false, false, 3944), "page", [], "any", false, false, false, 3944) == "states")) || (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "param", [], "any", false, false, false, 3944), "page", [], "any", false, false, false, 3944) == "countries"))) {
            // line 3945
            echo "        KTAppUserListDatatable.init();
    ";
        }
        // line 3947
        echo "});
</script>
";
        // line 2004
        echo $this->env->getExtension('Cms\Twig\Extension')->endBlock(true        );
    }

    public function getTemplateName()
    {
        return "/Applications/MAMP/htdocs/wellwell/themes/spotlayer/pages/dashboard/settings.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  8015 => 2004,  8011 => 3947,  8007 => 3945,  8005 => 3944,  8002 => 3943,  8000 => 3942,  7972 => 3916,  7970 => 3915,  7960 => 3907,  7958 => 3906,  7948 => 3899,  7942 => 3896,  7938 => 3895,  7929 => 3889,  7923 => 3886,  7919 => 3885,  7910 => 3879,  7904 => 3876,  7900 => 3875,  7895 => 3872,  7893 => 3871,  7863 => 3843,  7861 => 3842,  7843 => 3826,  7841 => 3825,  7838 => 3824,  7836 => 3823,  7825 => 3814,  7817 => 3812,  7815 => 3811,  7804 => 3802,  7802 => 3801,  7777 => 3778,  7775 => 3777,  7712 => 3716,  7704 => 3711,  7684 => 3694,  7674 => 3687,  7663 => 3679,  7652 => 3673,  7648 => 3672,  7644 => 3671,  7640 => 3670,  7630 => 3669,  7620 => 3668,  7616 => 3667,  7612 => 3666,  7598 => 3654,  7596 => 3653,  7592 => 3651,  7583 => 3649,  7579 => 3648,  7568 => 3640,  7560 => 3637,  7556 => 3636,  7552 => 3635,  7548 => 3634,  7538 => 3633,  7528 => 3632,  7524 => 3631,  7520 => 3630,  7513 => 3625,  7511 => 3624,  7479 => 3595,  7466 => 3585,  7460 => 3582,  7456 => 3581,  7443 => 3571,  7437 => 3568,  7433 => 3567,  7421 => 3558,  7414 => 3554,  7408 => 3551,  7390 => 3536,  7384 => 3533,  7380 => 3532,  7367 => 3522,  7361 => 3519,  7357 => 3518,  7346 => 3510,  7339 => 3506,  7331 => 3503,  7303 => 3478,  7297 => 3475,  7293 => 3474,  7283 => 3467,  7277 => 3464,  7273 => 3463,  7265 => 3458,  7258 => 3454,  7250 => 3451,  7189 => 3392,  7183 => 3388,  7179 => 3386,  7175 => 3384,  7169 => 3382,  7167 => 3381,  7163 => 3379,  7161 => 3378,  7153 => 3373,  7142 => 3365,  7134 => 3360,  7126 => 3355,  7118 => 3350,  7110 => 3345,  7095 => 3333,  7088 => 3328,  7086 => 3327,  7081 => 3324,  7077 => 3322,  7073 => 3320,  7067 => 3318,  7064 => 3317,  7056 => 3315,  7054 => 3314,  7050 => 3312,  7048 => 3311,  7040 => 3306,  7010 => 3279,  7000 => 3272,  6990 => 3265,  6965 => 3243,  6958 => 3238,  6956 => 3237,  6951 => 3234,  6947 => 3232,  6943 => 3230,  6937 => 3228,  6934 => 3227,  6926 => 3225,  6924 => 3224,  6920 => 3222,  6918 => 3221,  6910 => 3216,  6899 => 3208,  6889 => 3201,  6864 => 3179,  6857 => 3174,  6855 => 3173,  6850 => 3170,  6846 => 3168,  6842 => 3166,  6836 => 3164,  6833 => 3163,  6825 => 3161,  6823 => 3160,  6819 => 3158,  6817 => 3157,  6809 => 3152,  6798 => 3144,  6788 => 3137,  6775 => 3127,  6750 => 3105,  6743 => 3100,  6741 => 3099,  6736 => 3096,  6732 => 3094,  6728 => 3092,  6722 => 3090,  6719 => 3089,  6711 => 3087,  6709 => 3086,  6705 => 3084,  6703 => 3083,  6695 => 3078,  6684 => 3070,  6674 => 3063,  6661 => 3053,  6636 => 3031,  6629 => 3026,  6627 => 3025,  6622 => 3022,  6618 => 3020,  6614 => 3018,  6608 => 3016,  6605 => 3015,  6597 => 3013,  6595 => 3012,  6591 => 3010,  6589 => 3009,  6581 => 3004,  6570 => 2996,  6560 => 2989,  6547 => 2979,  6522 => 2957,  6515 => 2952,  6513 => 2951,  6508 => 2948,  6504 => 2946,  6500 => 2944,  6494 => 2942,  6491 => 2941,  6483 => 2939,  6481 => 2938,  6477 => 2936,  6475 => 2935,  6467 => 2930,  6456 => 2922,  6443 => 2912,  6418 => 2890,  6411 => 2885,  6409 => 2884,  6404 => 2881,  6400 => 2879,  6396 => 2877,  6390 => 2875,  6387 => 2874,  6379 => 2872,  6377 => 2871,  6373 => 2869,  6371 => 2868,  6363 => 2863,  6352 => 2855,  6327 => 2833,  6320 => 2828,  6318 => 2827,  6313 => 2824,  6309 => 2822,  6305 => 2820,  6299 => 2818,  6296 => 2817,  6288 => 2815,  6286 => 2814,  6282 => 2812,  6280 => 2811,  6272 => 2806,  6261 => 2798,  6236 => 2776,  6229 => 2771,  6227 => 2770,  6222 => 2767,  6218 => 2765,  6214 => 2763,  6208 => 2761,  6205 => 2760,  6197 => 2758,  6195 => 2757,  6191 => 2755,  6189 => 2754,  6181 => 2749,  6170 => 2741,  6145 => 2719,  6138 => 2714,  6136 => 2713,  6131 => 2710,  6127 => 2708,  6123 => 2706,  6117 => 2704,  6114 => 2703,  6106 => 2701,  6104 => 2700,  6100 => 2698,  6098 => 2697,  6090 => 2692,  6079 => 2684,  6054 => 2662,  6047 => 2657,  6045 => 2656,  6040 => 2653,  6036 => 2651,  6032 => 2649,  6026 => 2647,  6023 => 2646,  6015 => 2644,  6013 => 2643,  6009 => 2641,  6007 => 2640,  5999 => 2635,  5988 => 2627,  5963 => 2605,  5956 => 2600,  5954 => 2599,  5949 => 2596,  5945 => 2594,  5941 => 2592,  5935 => 2590,  5932 => 2589,  5924 => 2587,  5922 => 2586,  5918 => 2584,  5916 => 2583,  5908 => 2578,  5897 => 2570,  5887 => 2563,  5879 => 2558,  5871 => 2553,  5846 => 2531,  5839 => 2526,  5837 => 2525,  5832 => 2522,  5828 => 2520,  5824 => 2518,  5818 => 2516,  5815 => 2515,  5807 => 2513,  5805 => 2512,  5801 => 2510,  5799 => 2509,  5791 => 2504,  5780 => 2496,  5755 => 2474,  5748 => 2469,  5746 => 2468,  5741 => 2465,  5737 => 2463,  5733 => 2461,  5727 => 2459,  5724 => 2458,  5716 => 2456,  5714 => 2455,  5710 => 2453,  5708 => 2452,  5700 => 2447,  5689 => 2439,  5664 => 2417,  5657 => 2412,  5655 => 2411,  5650 => 2408,  5646 => 2406,  5642 => 2404,  5636 => 2402,  5633 => 2401,  5625 => 2399,  5623 => 2398,  5619 => 2396,  5617 => 2395,  5609 => 2390,  5598 => 2382,  5573 => 2360,  5566 => 2355,  5564 => 2354,  5559 => 2351,  5555 => 2349,  5551 => 2347,  5545 => 2345,  5542 => 2344,  5534 => 2342,  5532 => 2341,  5528 => 2339,  5526 => 2338,  5518 => 2333,  5507 => 2325,  5497 => 2318,  5472 => 2296,  5465 => 2291,  5463 => 2290,  5458 => 2287,  5454 => 2285,  5450 => 2283,  5444 => 2281,  5441 => 2280,  5433 => 2278,  5431 => 2277,  5427 => 2275,  5425 => 2274,  5417 => 2269,  5404 => 2259,  5397 => 2255,  5390 => 2251,  5378 => 2242,  5367 => 2234,  5360 => 2230,  5353 => 2226,  5341 => 2217,  5331 => 2210,  5321 => 2203,  5296 => 2181,  5289 => 2176,  5287 => 2175,  5282 => 2172,  5278 => 2170,  5274 => 2168,  5268 => 2166,  5265 => 2165,  5257 => 2163,  5255 => 2162,  5251 => 2160,  5249 => 2159,  5241 => 2154,  5228 => 2144,  5221 => 2140,  5214 => 2136,  5202 => 2127,  5191 => 2119,  5184 => 2115,  5177 => 2111,  5165 => 2102,  5155 => 2095,  5145 => 2088,  5120 => 2066,  5113 => 2061,  5111 => 2060,  5077 => 2039,  5071 => 2036,  5067 => 2035,  5063 => 2034,  5059 => 2033,  5055 => 2032,  5051 => 2031,  5047 => 2030,  5038 => 2024,  5034 => 2023,  5020 => 2011,  5014 => 2009,  5012 => 2008,  5008 => 2007,  5003 => 2006,  5001 => 2005,  4999 => 2004,  4997 => 1986,  4986 => 1994,  4984 => 1993,  4977 => 1988,  4974 => 1987,  4972 => 1986,  4961 => 1979,  4953 => 1973,  4951 => 1972,  4944 => 1967,  4935 => 1965,  4931 => 1964,  4924 => 1959,  4922 => 1958,  4915 => 1953,  4913 => 1952,  4906 => 1947,  4904 => 1946,  4897 => 1941,  4895 => 1940,  4888 => 1935,  4886 => 1934,  4879 => 1930,  4861 => 1915,  4856 => 1913,  4849 => 1909,  4838 => 1901,  4833 => 1899,  4826 => 1895,  4819 => 1891,  4813 => 1887,  4811 => 1886,  4804 => 1882,  4782 => 1867,  4767 => 1861,  4752 => 1855,  4746 => 1851,  4731 => 1849,  4727 => 1848,  4722 => 1846,  4716 => 1845,  4705 => 1841,  4699 => 1837,  4684 => 1835,  4680 => 1834,  4675 => 1832,  4669 => 1831,  4658 => 1827,  4645 => 1821,  4632 => 1815,  4619 => 1809,  4612 => 1805,  4598 => 1798,  4583 => 1792,  4568 => 1786,  4562 => 1782,  4547 => 1780,  4543 => 1779,  4538 => 1777,  4532 => 1776,  4521 => 1772,  4515 => 1768,  4500 => 1766,  4496 => 1765,  4491 => 1763,  4485 => 1762,  4474 => 1758,  4461 => 1752,  4448 => 1746,  4435 => 1740,  4428 => 1736,  4414 => 1729,  4399 => 1723,  4384 => 1717,  4378 => 1713,  4363 => 1711,  4359 => 1710,  4354 => 1708,  4348 => 1707,  4337 => 1703,  4331 => 1699,  4316 => 1697,  4312 => 1696,  4307 => 1694,  4301 => 1693,  4290 => 1689,  4277 => 1683,  4264 => 1677,  4251 => 1671,  4244 => 1667,  4230 => 1660,  4215 => 1654,  4200 => 1648,  4194 => 1644,  4179 => 1642,  4175 => 1641,  4170 => 1639,  4164 => 1638,  4153 => 1634,  4147 => 1630,  4132 => 1628,  4128 => 1627,  4123 => 1625,  4117 => 1624,  4106 => 1620,  4093 => 1614,  4080 => 1608,  4067 => 1602,  4060 => 1598,  4046 => 1591,  4031 => 1585,  4016 => 1579,  4010 => 1575,  3995 => 1573,  3991 => 1572,  3986 => 1570,  3980 => 1569,  3969 => 1565,  3963 => 1561,  3948 => 1559,  3944 => 1558,  3939 => 1556,  3933 => 1555,  3922 => 1551,  3909 => 1545,  3896 => 1539,  3883 => 1533,  3876 => 1529,  3862 => 1522,  3847 => 1516,  3832 => 1510,  3826 => 1506,  3811 => 1504,  3807 => 1503,  3802 => 1501,  3796 => 1500,  3785 => 1496,  3779 => 1492,  3764 => 1490,  3760 => 1489,  3755 => 1487,  3749 => 1486,  3738 => 1482,  3725 => 1476,  3712 => 1470,  3699 => 1464,  3692 => 1460,  3678 => 1453,  3663 => 1447,  3648 => 1441,  3642 => 1437,  3627 => 1435,  3623 => 1434,  3618 => 1432,  3612 => 1431,  3601 => 1427,  3595 => 1423,  3580 => 1421,  3576 => 1420,  3571 => 1418,  3565 => 1417,  3554 => 1413,  3541 => 1407,  3528 => 1401,  3515 => 1395,  3508 => 1391,  3494 => 1384,  3479 => 1378,  3464 => 1372,  3458 => 1368,  3443 => 1366,  3439 => 1365,  3434 => 1363,  3428 => 1362,  3417 => 1358,  3411 => 1354,  3396 => 1352,  3392 => 1351,  3387 => 1349,  3381 => 1348,  3370 => 1344,  3357 => 1338,  3344 => 1332,  3331 => 1326,  3324 => 1322,  3310 => 1315,  3295 => 1309,  3280 => 1303,  3274 => 1299,  3259 => 1297,  3255 => 1296,  3250 => 1294,  3244 => 1293,  3233 => 1289,  3227 => 1285,  3212 => 1283,  3208 => 1282,  3203 => 1280,  3197 => 1279,  3186 => 1275,  3173 => 1269,  3160 => 1263,  3147 => 1257,  3140 => 1253,  3126 => 1246,  3111 => 1240,  3096 => 1234,  3090 => 1230,  3075 => 1228,  3071 => 1227,  3066 => 1225,  3060 => 1224,  3049 => 1220,  3043 => 1216,  3028 => 1214,  3024 => 1213,  3019 => 1211,  3013 => 1210,  3002 => 1206,  2989 => 1200,  2976 => 1194,  2963 => 1188,  2956 => 1184,  2940 => 1177,  2925 => 1171,  2919 => 1167,  2904 => 1165,  2900 => 1164,  2895 => 1162,  2889 => 1161,  2878 => 1157,  2872 => 1153,  2857 => 1151,  2853 => 1150,  2848 => 1148,  2842 => 1147,  2831 => 1143,  2818 => 1137,  2805 => 1131,  2792 => 1125,  2785 => 1121,  2769 => 1114,  2754 => 1108,  2748 => 1104,  2733 => 1102,  2729 => 1101,  2724 => 1099,  2718 => 1098,  2707 => 1094,  2701 => 1090,  2686 => 1088,  2682 => 1087,  2677 => 1085,  2671 => 1084,  2660 => 1080,  2647 => 1074,  2634 => 1068,  2621 => 1062,  2614 => 1058,  2598 => 1051,  2583 => 1045,  2577 => 1041,  2562 => 1039,  2558 => 1038,  2553 => 1036,  2547 => 1035,  2536 => 1031,  2530 => 1027,  2515 => 1025,  2511 => 1024,  2506 => 1022,  2500 => 1021,  2489 => 1017,  2476 => 1011,  2463 => 1005,  2450 => 999,  2443 => 995,  2427 => 988,  2412 => 982,  2406 => 978,  2391 => 976,  2387 => 975,  2382 => 973,  2376 => 972,  2365 => 968,  2359 => 964,  2344 => 962,  2340 => 961,  2335 => 959,  2329 => 958,  2318 => 954,  2305 => 948,  2292 => 942,  2279 => 936,  2272 => 932,  2258 => 925,  2243 => 919,  2228 => 913,  2222 => 909,  2207 => 907,  2203 => 906,  2198 => 904,  2192 => 903,  2181 => 899,  2175 => 895,  2160 => 893,  2156 => 892,  2151 => 890,  2145 => 889,  2134 => 885,  2121 => 879,  2108 => 873,  2095 => 867,  2088 => 863,  2072 => 856,  2057 => 850,  2051 => 846,  2036 => 844,  2032 => 843,  2027 => 841,  2021 => 840,  2010 => 836,  2004 => 832,  1989 => 830,  1985 => 829,  1980 => 827,  1974 => 826,  1963 => 822,  1950 => 816,  1937 => 810,  1924 => 804,  1917 => 800,  1911 => 797,  1897 => 788,  1891 => 787,  1885 => 786,  1879 => 785,  1873 => 784,  1867 => 783,  1861 => 782,  1855 => 781,  1848 => 777,  1841 => 773,  1836 => 771,  1829 => 767,  1824 => 765,  1817 => 761,  1812 => 759,  1805 => 757,  1796 => 753,  1789 => 749,  1782 => 747,  1769 => 741,  1762 => 737,  1756 => 734,  1750 => 730,  1748 => 729,  1741 => 725,  1724 => 711,  1719 => 709,  1712 => 707,  1703 => 703,  1697 => 702,  1690 => 698,  1683 => 696,  1670 => 690,  1663 => 686,  1657 => 683,  1651 => 679,  1649 => 678,  1642 => 673,  1640 => 672,  1633 => 667,  1631 => 666,  1624 => 661,  1622 => 660,  1615 => 655,  1613 => 654,  1606 => 649,  1604 => 648,  1597 => 643,  1595 => 642,  1588 => 637,  1586 => 636,  1579 => 631,  1577 => 630,  1570 => 625,  1568 => 624,  1561 => 619,  1559 => 618,  1552 => 613,  1550 => 612,  1543 => 607,  1541 => 606,  1534 => 601,  1532 => 600,  1525 => 596,  1507 => 581,  1503 => 580,  1497 => 577,  1493 => 576,  1485 => 571,  1481 => 570,  1473 => 565,  1462 => 557,  1453 => 555,  1445 => 554,  1437 => 553,  1429 => 552,  1423 => 549,  1416 => 544,  1401 => 542,  1397 => 541,  1391 => 538,  1386 => 535,  1371 => 533,  1367 => 532,  1361 => 529,  1352 => 523,  1348 => 522,  1344 => 521,  1338 => 518,  1334 => 517,  1325 => 511,  1321 => 510,  1317 => 509,  1311 => 506,  1307 => 505,  1299 => 500,  1292 => 496,  1286 => 492,  1284 => 491,  1269 => 481,  1264 => 479,  1250 => 468,  1232 => 453,  1229 => 452,  1223 => 450,  1221 => 449,  1216 => 448,  1210 => 446,  1208 => 445,  1203 => 443,  1197 => 440,  1194 => 439,  1188 => 437,  1186 => 436,  1181 => 435,  1175 => 433,  1173 => 432,  1168 => 430,  1160 => 425,  1157 => 424,  1151 => 422,  1149 => 421,  1144 => 420,  1138 => 418,  1136 => 417,  1131 => 415,  1125 => 412,  1122 => 411,  1116 => 409,  1114 => 408,  1109 => 407,  1103 => 405,  1101 => 404,  1096 => 402,  1088 => 397,  1076 => 388,  1070 => 385,  1063 => 381,  1057 => 378,  1049 => 373,  1042 => 369,  1036 => 365,  1034 => 364,  1027 => 360,  1011 => 348,  1008 => 347,  1003 => 346,  1000 => 345,  995 => 344,  993 => 343,  988 => 341,  980 => 337,  977 => 336,  972 => 335,  969 => 334,  964 => 333,  962 => 332,  957 => 330,  949 => 326,  946 => 325,  941 => 324,  938 => 323,  933 => 322,  931 => 321,  926 => 319,  912 => 310,  907 => 308,  898 => 304,  893 => 302,  884 => 298,  879 => 296,  870 => 292,  865 => 290,  856 => 286,  851 => 284,  844 => 280,  838 => 277,  831 => 273,  827 => 272,  821 => 271,  816 => 269,  808 => 264,  803 => 262,  796 => 258,  791 => 256,  784 => 252,  779 => 250,  769 => 245,  762 => 241,  752 => 236,  745 => 232,  735 => 227,  728 => 223,  721 => 219,  716 => 217,  709 => 213,  702 => 211,  695 => 207,  688 => 203,  682 => 202,  677 => 200,  670 => 196,  665 => 194,  658 => 190,  653 => 188,  646 => 184,  641 => 182,  635 => 179,  629 => 175,  627 => 174,  620 => 170,  605 => 158,  600 => 156,  593 => 152,  589 => 151,  584 => 149,  577 => 145,  573 => 144,  568 => 142,  554 => 135,  541 => 129,  531 => 121,  516 => 119,  512 => 118,  505 => 114,  493 => 109,  485 => 108,  477 => 107,  469 => 106,  462 => 102,  450 => 97,  442 => 96,  434 => 95,  426 => 94,  418 => 93,  410 => 92,  402 => 91,  394 => 90,  386 => 89,  378 => 88,  370 => 87,  362 => 86,  354 => 85,  346 => 84,  338 => 83,  330 => 82,  322 => 81,  314 => 80,  306 => 79,  298 => 78,  290 => 77,  282 => 76,  274 => 75,  266 => 74,  260 => 73,  252 => 72,  244 => 71,  236 => 70,  228 => 69,  220 => 68,  212 => 67,  204 => 66,  196 => 65,  188 => 64,  180 => 63,  172 => 62,  164 => 61,  156 => 60,  148 => 59,  140 => 58,  133 => 54,  127 => 50,  112 => 48,  108 => 47,  101 => 43,  95 => 40,  89 => 36,  87 => 35,  79 => 30,  71 => 25,  62 => 19,  52 => 11,  48 => 10,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<div class=\"kt-grid kt-grid--desktop kt-grid--ver kt-grid--ver-desktop kt-app\">

    <!--Begin:: App Aside Mobile Toggle-->
    <button class=\"kt-app__aside-close\" id=\"kt_user_profile_aside_close\">
        <i class=\"la la-close\"></i>
    </button>
    <!--End:: App Aside Mobile Toggle-->

    <!-- begin:: Aside -->
    {% partial 'settingsmenu' %}
    <!-- end:: Aside -->
    <!--End::Aside-->

    <!--Begin:: Inbox List-->
    <div class=\"kt-grid__item kt-grid__item--fluid    kt-portlet    kt-inbox__list kt-inbox__list--shown\" id=\"kt_inbox_list\">
        <div class=\"kt-portlet__head\">
    \t\t<div class=\"kt-portlet__head-label\">
    \t\t\t<h3 class=\"kt-portlet__head-title\">
    \t\t\t\t{{this.page.title|__}}
    \t\t\t</h3>
    \t\t</div>
        </div>
        <div class=\"kt-portlet__body kt-portlet__body--fit-x\">
           \t<div class=\"col-lg-12\">
                {{ form_ajax('onSave', { id: 'kt_form', class:'kt-form' }) }}
    \t\t\t\t<div class=\"row\">
    \t\t\t\t\t<div class=\"col-xl-12\">
\t\t\t\t\t\t\t<div class=\"form-group kt-hidden\" id=\"kt-form_msg\">
                                <div class=\"alert alert-danger\" role=\"alert\">
\t\t\t\t\t\t\t\t\t{{'Oh snap! Change a few things up and try submitting again.'|__}}
\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t</div>
                        </div>
                    </div>
                    {% if this.param.page == 'general' or this.param.page is empty %}
        \t\t\t\t<div class=\"row\">
        \t\t\t\t\t<div class=\"col-xl-2\"></div>
        \t\t\t\t\t<div class=\"col-xl-8\">
        \t\t\t\t\t\t<div class=\"kt-section kt-section--first\">
                                    <h3 class=\"kt-section__title kt-section__title-lg\">{{'General'|__}}:</h3>
        \t\t\t\t\t\t\t<div class=\"kt-section__body\">
        \t\t\t\t\t\t\t\t<div class=\"form-group row\">
        \t\t\t\t\t\t\t\t\t<label class=\"col-xl-3 col-lg-3 col-form-label\">{{'Default Language'|__}}</label>
        \t\t\t\t\t\t\t\t\t<div class=\"col-lg-9 col-xl-6\">
        \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"language\" required>
                                                    <option data-hidden=\"true\"></option>
                                                    {% for code, name in locales %}
        \t\t\t\t\t\t\t\t\t\t\t\t<option value=\"{{code}}\" {% if language == code %}selected{% endif %} data-live-search=\"true\">{{ name }}</option>
                                                    {% endfor %}
                                                </select>
        \t\t\t\t\t\t\t\t\t</div>
        \t\t\t\t\t\t\t\t</div>
        \t\t\t\t\t\t\t\t<div class=\"form-group row\">
        \t\t\t\t\t\t\t\t\t<label class=\"col-xl-3 col-lg-3 col-form-label\">{{'TimeZone'|__}}</label>
        \t\t\t\t\t\t\t\t\t<div class=\"col-lg-9 col-xl-6\">
        \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"timezone_offset\" data-live-search=\"true\" required>
                                                    <option data-hidden=\"true\"></option>
                                                \t<option value=\"-12:00\" {% if timezone_offset == \"-12:00\" %}selected{% endif %}>(GMT -12:00) {{\"Eniwetok, Kwajalein\"|__}}</option>
                                                \t<option value=\"-11:00\" {% if timezone_offset == \"-11:00\" %}selected{% endif %}>(GMT -11:00) {{\"Midway Island, Samoa\"|__}}</option>
                                                \t<option value=\"-10:00\" {% if timezone_offset == \"-10:00\" %}selected{% endif %}>(GMT -10:00) {{\"Hawaii\"|__}}</option>
                                                \t<option value=\"-09:50\" {% if timezone_offset == \"-09:50\" %}selected{% endif %}>(GMT -9:30) {{\"Taiohae\"|__}}</option>
                                                \t<option value=\"-09:00\" {% if timezone_offset == \"-09:00\" %}selected{% endif %}>(GMT -9:00) {{\"Alaska\"|__}}</option>
                                                \t<option value=\"-08:00\" {% if timezone_offset == \"-08:00\" %}selected{% endif %}>(GMT -8:00) {{\"Pacific Time (US &amp; Canada)\"|__}}</option>
                                                \t<option value=\"-07:00\" {% if timezone_offset == \"-07:00\" %}selected{% endif %}>(GMT -7:00) {{\"Mountain Time (US &amp; Canada)\"|__}}</option>
                                                \t<option value=\"-06:00\" {% if timezone_offset == \"-06:00\" %}selected{% endif %}>(GMT -6:00) {{\"Central Time (US &amp; Canada), Mexico City\"|__}}</option>
                                                \t<option value=\"-05:00\" {% if timezone_offset == \"-05:00\" %}selected{% endif %}>(GMT -5:00) {{\"Eastern Time (US &amp; Canada), Bogota, Lima\"|__}}</option>
                                                \t<option value=\"-04:50\" {% if timezone_offset == \"-04:50\" %}selected{% endif %}>(GMT -4:30) {{\"Caracas\"|__}}</option>
                                                \t<option value=\"-04:00\" {% if timezone_offset == \"-04:00\" %}selected{% endif %}>(GMT -4:00) {{\"Atlantic Time (Canada), Caracas, La Paz\"|__}}</option>
                                                \t<option value=\"-03:50\" {% if timezone_offset == \"-03:50\" %}selected{% endif %}>(GMT -3:30) {{\"Newfoundland\"|__}}</option>
                                                \t<option value=\"-03:00\" {% if timezone_offset == \"-03:00\" %}selected{% endif %}>(GMT -3:00) {{\"Brazil, Buenos Aires, Georgetown\"|__}}</option>
                                                \t<option value=\"-02:00\" {% if timezone_offset == \"-02:00\" %}selected{% endif %}>(GMT -2:00) {{\"Mid-Atlantic\"|__}}</option>
                                                \t<option value=\"-01:00\" {% if timezone_offset == \"-01:00\" %}selected{% endif %}>(GMT -1:00) {{\"Azores, Cape Verde Islands\"|__}}</option>
                                                \t<option value=\"+00:00\" {% if timezone_offset == \"+00:00\" %}selected{% endif %}>(GMT) Western Europe Time, London, Lisbon, Casablanca</option>
                                                \t<option value=\"+01:00\" {% if timezone_offset == \"+01:00\" %}selected{% endif %}>(GMT +1:00) {{\"Brussels, Copenhagen, Madrid, Paris\"|__}}</option>
                                                \t<option value=\"+02:00\" {% if timezone_offset == \"+02:00\" %}selected{% endif %}>(GMT +2:00) {{\"Cairo, Kaliningrad, South Africa\"|__}}</option>
                                                \t<option value=\"+03:00\" {% if timezone_offset == \"+03:00\" %}selected{% endif %}>(GMT +3:00) {{\"Baghdad, Riyadh, Moscow, St. Petersburg\"|__}}</option>
                                                \t<option value=\"+03:50\" {% if timezone_offset == \"+03:50\" %}selected{% endif %}>(GMT +3:30) {{\"Tehran\"|__}}</option>
                                                \t<option value=\"+04:00\" {% if timezone_offset == \"+04:00\" %}selected{% endif %}>(GMT +4:00) {{\"Abu Dhabi, Muscat, Baku, Tbilisi\"|__}}</option>
                                                \t<option value=\"+04:50\" {% if timezone_offset == \"+04:50\" %}selected{% endif %}>(GMT +4:30) {{\"Kabul\"|__}}</option>
                                                \t<option value=\"+05:00\" {% if timezone_offset == \"+05:00\" %}selected{% endif %}>(GMT +5:00) {{\"Ekaterinburg, Islamabad, Karachi, Tashkent\"|__}}</option>
                                                \t<option value=\"+05:50\" {% if timezone_offset == \"+05:50\" %}selected{% endif %}>(GMT +5:30) {{\"Bombay, Calcutta, Madras, New Delhi\"|__}}</option>
                                                \t<option value=\"+05:75\" {% if timezone_offset == \"+05:75\" %}selected{% endif %}>(GMT +5:45) {{\"Kathmandu, Pokhara\"|__}}</option>
                                                \t<option value=\"+06:00\" {% if timezone_offset == \"+06:00\" %}selected{% endif %}>(GMT +6:00) {{\"Almaty, Dhaka, Colombo\"|__}}</option>
                                                \t<option value=\"+06:50\" {% if timezone_offset == \"+06:50\" %}selected{% endif %}>(GMT +6:30) {{\"Yangon, Mandalay\"|__}}</option>
                                                \t<option value=\"+07:00\" {% if timezone_offset == \"+07:00\" %}selected{% endif %}>(GMT +7:00) {{\"Bangkok, Hanoi, Jakarta\"|__}}</option>
                                                \t<option value=\"+08:00\" {% if timezone_offset == \"+08:00\" %}selected{% endif %}>(GMT +8:00) {{\"Beijing, Perth, Singapore, Hong Kong\"|__}}</option>
                                                \t<option value=\"+08:75\" {% if timezone_offset == \"+08:75\" %}selected{% endif %}>(GMT +8:45) {{\"Eucla\"|__}}</option>
                                                \t<option value=\"+09:00\" {% if timezone_offset == \"+09:00\" %}selected{% endif %}>(GMT +9:00) {{\"Tokyo, Seoul, Osaka, Sapporo, Yakutsk\"|__}}</option>
                                                \t<option value=\"+09:50\" {% if timezone_offset == \"+09:50\" %}selected{% endif %}>(GMT +9:30) {{\"Adelaide, Darwin\"|__}}</option>
                                                \t<option value=\"+10:00\" {% if timezone_offset == \"+10:00\" %}selected{% endif %}>(GMT +10:00) {{\"Eastern Australia, Guam, Vladivostok\"|__}}</option>
                                                \t<option value=\"+10:50\" {% if timezone_offset == \"+10:50\" %}selected{% endif %}>(GMT +10:30) {{\"Lord Howe Island\"|__}}</option>
                                                \t<option value=\"+11:00\" {% if timezone_offset == \"+11:00\" %}selected{% endif %}>(GMT +11:00) {{\"Magadan, Solomon Islands, New Caledonia\"|__}}</option>
                                                \t<option value=\"+11:50\" {% if timezone_offset == \"+11:50\" %}selected{% endif %}>(GMT +11:30) {{\"Norfolk Island\"|__}}</option>
                                                \t<option value=\"+12:00\" {% if timezone_offset == \"+12:00\" %}selected{% endif %}>(GMT +12:00) {{\"Auckland, Wellington, Fiji, Kamchatka\"|__}}</option>
                                                \t<option value=\"+12:75\" {% if timezone_offset == \"+12:75\" %}selected{% endif %}>(GMT +12:45) {{\"Chatham Islands\"|__}}</option>
                                                \t<option value=\"+13:00\" {% if timezone_offset == \"+13:00\" %}selected{% endif %}>(GMT +13:00) {{\"Apia, Nukualofa\"|__}}</option>
                                                \t<option value=\"+14:00\" {% if timezone_offset == \"+14:00\" %}selected{% endif %}>(GMT +14:00) {{\"Line Islands, Tokelau\"|__}}</option>
                                                </select>
        \t\t\t\t\t\t\t\t\t</div>
        \t\t\t\t\t\t\t\t</div>
        \t\t\t\t\t\t\t\t<div class=\"form-group row\">
        \t\t\t\t\t\t\t\t\t<label class=\"col-xl-3 col-lg-3 col-form-label\">{{'Date Format'|__}}</label>
        \t\t\t\t\t\t\t\t\t<div class=\"col-lg-9 col-xl-6\">
        \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"dateformat\" required>
                                                    <option data-hidden=\"true\"></option>
                                                    <option value=\"d/m/Y\" {% if dateformat == \"d/m/Y\" %}selected{% endif %}>{{'now'|date('d/m/Y')}}</option>
                                                    <option value=\"m/d/Y\" {% if dateformat == \"m/d/Y\" %}selected{% endif %}>{{'now'|date('m/d/Y')}}</option>
                                                    <option value=\"d M, Y\" {% if dateformat == \"d M, Y\" %}selected{% endif %}>{{'now'|date('d M, Y')}}</option>
                                                    <option value=\"M d, Y\" {% if dateformat == \"M d, Y\" %}selected{% endif %}>{{'now'|date('M d, Y')}}</option>
                                                </select>
        \t\t\t\t\t\t\t\t\t</div>
        \t\t\t\t\t\t\t\t</div>
        \t\t\t\t\t\t\t\t<div class=\"form-group row\">
        \t\t\t\t\t\t\t\t\t<label class=\"col-xl-3 col-lg-3 col-form-label\">{{'Currency'|__}}</label>
        \t\t\t\t\t\t\t\t\t<div class=\"col-lg-9 col-xl-6\">
        \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" id=\"currency\" name=\"currency\" data-live-search=\"true\" required>
                                                    <option data-hidden=\"true\"></option>
                                                    {% for currency in currencies %}
                                                        <option value=\"{{currency.id}}\" {% if primary_currency.id == currency.id %}selected{% endif %}>{{currency.name}}</option>
                                                    {% endfor %}
                                                </select>
        \t\t\t\t\t\t\t\t\t</div>
        \t\t\t\t\t\t\t\t</div>
        \t\t\t\t\t\t\t\t<div class=\"form-group row\">
        \t\t\t\t\t\t\t\t\t<label class=\"col-xl-3 col-lg-3 col-form-label\"></label>
        \t\t\t\t\t\t\t\t\t<div class=\"col-lg-9 col-xl-6\">
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" id=\"place_symbol_before\" name=\"place_symbol_before\" {% if primary_currency.place_symbol_before %}checked{% endif %}> {{'Place symbol before number'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" id=\"with_space\" name=\"with_space\" {% if primary_currency.with_space %}checked{% endif %}> {{'Place symbol with space'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
        \t\t\t\t\t\t\t\t\t</div>
        \t\t\t\t\t\t\t\t</div>
        \t\t\t\t\t\t\t\t<div class=\"form-group row\">
        \t\t\t\t\t\t\t\t\t<label class=\"col-xl-3 col-lg-3 col-form-label\">{{'Decimal Point'|__}}</label>
        \t\t\t\t\t\t\t\t\t<div class=\"col-lg-9 col-xl-6\">
        \t\t\t\t\t\t\t\t\t\t<input class=\"form-control\" type=\"text\" id=\"decimal_point\" name=\"decimal_point\" value=\"{{primary_currency.decimal_point}}\" required>
        \t\t\t\t\t\t\t\t\t\t<span class=\"form-text text-muted\">{{'Character to use as decimal point'|__}}.</span>
        \t\t\t\t\t\t\t\t\t</div>
        \t\t\t\t\t\t\t\t</div>
        \t\t\t\t\t\t\t\t<div class=\"form-group row\">
        \t\t\t\t\t\t\t\t\t<label class=\"col-xl-3 col-lg-3 col-form-label\">{{'Thousand Separator'|__}}</label>
        \t\t\t\t\t\t\t\t\t<div class=\"col-lg-9 col-xl-6\">
        \t\t\t\t\t\t\t\t\t\t<input class=\"form-control\" type=\"text\" id=\"thousand_separator\" name=\"thousand_separator\" value=\"{{primary_currency.thousand_separator}}\" required>
        \t\t\t\t\t\t\t\t\t\t<span class=\"form-text text-muted\">{{'Character to separate thousands'|__}}.</span>
        \t\t\t\t\t\t\t\t\t</div>
        \t\t\t\t\t\t\t\t</div>
        \t\t\t\t\t\t\t\t<div class=\"form-group row\">
        \t\t\t\t\t\t\t\t\t<label class=\"col-xl-3 col-lg-3 col-form-label\">{{'Number of fraction digits'|__}}</label>
        \t\t\t\t\t\t\t\t\t<div class=\"col-lg-9 col-xl-6\">
        \t\t\t\t\t\t\t\t\t\t<input class=\"form-control\" type=\"text\" id=\"initbiz_money_fraction_digits\" name=\"initbiz_money_fraction_digits\" value=\"{{primary_currency.initbiz_money_fraction_digits}}\" required>
        \t\t\t\t\t\t\t\t\t</div>
        \t\t\t\t\t\t\t\t</div>
        \t\t\t\t\t\t\t</div>
        \t\t\t\t\t\t</div>
        \t\t\t\t\t</div>
        \t\t\t\t\t<div class=\"col-xl-2\"></div>
        \t\t\t\t</div>
        \t\t\t\t<div class=\"row\">
        \t\t\t\t\t<div class=\"col-xl-4\"></div>
        \t\t\t\t\t<div class=\"col-xl-8\">
                                <div class=\"form-group\">
                                    <button type=\"submit\" class=\"btn btn-primary\">{{'Save'|__}}</button>
                                </div>
                            </div>
                        </div>
                    {% elseif this.param.page == 'company' %}
        \t\t\t\t<div class=\"row\">
        \t\t\t\t\t<div class=\"col-xl-2\"></div>
        \t\t\t\t\t<div class=\"col-xl-8\">
        \t\t\t\t\t\t<div class=\"kt-section kt-section--first\">
                                    <h3 class=\"kt-section__title kt-section__title-lg\">{{'Company Settings'|__}}:</h3>
        \t\t\t\t\t\t\t<div class=\"kt-section__body\">
                                        <div class=\"form-group row\">
                                            <label class=\"col-xl-3 col-lg-3 col-form-label\">{{'Website Name'|__}}</label>
                                            <div class=\"col-lg-9 col-xl-6\">
                                                <input class=\"form-control\" type=\"text\" name=\"company[title]\" value=\"{{company.title}}\" required>
                                            </div>
                                        </div>
                                        <div class=\"form-group row\">
                                            <label class=\"col-xl-3 col-lg-3 col-form-label\">{{'Website charset'|__}}</label>
                                            <div class=\"col-lg-9 col-xl-6\">
                                                <input class=\"form-control\" type=\"text\" name=\"company[charset]\" value=\"{{company.charset}}\" required>
                                            </div>
                                        </div>
                                        <div class=\"form-group row\">
                                            <label class=\"col-xl-3 col-lg-3 col-form-label\">{{'Website Description'|__}}</label>
                                            <div class=\"col-lg-9 col-xl-6\">
                                                <textarea class=\"form-control\" name=\"company[description]\" required>{{company.description}}</textarea>
                                            </div>
                                        </div>
                                        <div class=\"form-group row\">
                                            <label class=\"col-xl-3 col-lg-3 col-form-label\">{{'Website Keywords'|__}}</label>
                                            <div class=\"col-lg-9 col-xl-6\">
                                                <input id=\"kt_tagify_2\" class=\"tagify\" placeholder='{{\"type\"|__}}...' value='{{company.keywords}}' name=\"company[keywords]\" />
                                                <span class=\"form-text text-muted\">{{'Seprate with comma'|__}} ,</span>
                                            </div>
                                        </div>
                                        <div class=\"form-group row\">
                                            <label class=\"col-xl-3 col-lg-3 col-form-label\">{{'Primary Email'|__}}</label>
                                            <div class=\"col-lg-9 col-xl-6\">
                                                <div class=\"input-group\">
    \t\t\t\t\t\t\t\t\t\t\t\t<div class=\"input-group-prepend\"><span class=\"input-group-text\"><i class=\"la la-at\"></i></span></div>
    \t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" class=\"form-control\" name=\"company[primary_email]\" value=\"{{company.primary_email}}\" placeholder=\"{{'Email'|__}}\" aria-describedby=\"basic-addon1\">
    \t\t\t\t\t\t\t\t\t\t\t</div>
                                                <span class=\"form-text text-muted\">{{'This is the main email notices will be sent to. It is also used as the from email when emailing other automatic emails'|__}}.</span>
                                            </div>
                                        </div>
                                        <div class=\"form-group row\">
                                            <label class=\"col-xl-3 col-lg-3 col-form-label\">{{'Tax Identification Number'|__}}</label>
                                            <div class=\"col-lg-9 col-xl-6\">
                                                <input class=\"form-control\" type=\"text\" name=\"company[tax_number]\" value=\"{{company.tax_number}}\" required>
                                            </div>
                                        </div>
                                        <div class=\"form-group row\">
                                            <label class=\"col-xl-3 col-lg-3 col-form-label\">{{'Company Phone'|__}}</label>
                                            <div class=\"col-lg-9 col-xl-6\">
                                                <div class=\"input-group\">
    \t\t\t\t\t\t\t\t\t\t\t\t<div class=\"input-group-prepend\"><span class=\"input-group-text\"><i class=\"la la-phone\"></i></span></div>
    \t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" class=\"form-control\" name=\"company[company_phone]\" value=\"{{company.company_phone}}\" placeholder=\"{{'Phone'|__}}\" aria-describedby=\"basic-addon1\">
    \t\t\t\t\t\t\t\t\t\t\t</div>
                                            </div>
                                        </div>
                                        <div class=\"form-group row\">
                                            <label class=\"col-xl-3 col-lg-3 col-form-label\">{{'Company Phone 2'|__}}</label>
                                            <div class=\"col-lg-9 col-xl-6\">
                                                <div class=\"input-group\">
    \t\t\t\t\t\t\t\t\t\t\t\t<div class=\"input-group-prepend\"><span class=\"input-group-text\"><i class=\"la la-phone\"></i></span></div>
    \t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" class=\"form-control\" name=\"company[company_phone_2]\" value=\"{{company.company_phone_2}}\" placeholder=\"{{'Phone'|__}}\" aria-describedby=\"basic-addon1\">
    \t\t\t\t\t\t\t\t\t\t\t</div>
                                            </div>
                                        </div>
                                        <div class=\"form-group row\">
                                            <label class=\"col-xl-3 col-lg-3 col-form-label\">{{'Company Phone 3'|__}}</label>
                                            <div class=\"col-lg-9 col-xl-6\">
                                                <div class=\"input-group\">
    \t\t\t\t\t\t\t\t\t\t\t\t<div class=\"input-group-prepend\"><span class=\"input-group-text\"><i class=\"la la-phone\"></i></span></div>
    \t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" class=\"form-control\" name=\"company[company_phone_3]\" value=\"{{company.company_phone_3}}\" placeholder=\"{{'Phone'|__}}\" aria-describedby=\"basic-addon1\">
    \t\t\t\t\t\t\t\t\t\t\t</div>
                                            </div>
                                        </div>
                                        <div class=\"form-group row\">
                                            <label class=\"col-xl-3 col-lg-3 col-form-label\">{{'Facebook'|__}}</label>
                                            <div class=\"col-lg-9 col-xl-6\">
                                                <input class=\"form-control\" type=\"text\" name=\"company[facebook]\" value=\"{{company.facebook}}\" required>
                                            </div>
                                        </div>
                                        <div class=\"form-group row\">
                                            <label class=\"col-xl-3 col-lg-3 col-form-label\">{{'Twitter'|__}}</label>
                                            <div class=\"col-lg-9 col-xl-6\">
                                                <input class=\"form-control\" type=\"text\" name=\"company[twitter]\" value=\"{{company.twitter}}\" required>
                                            </div>
                                        </div>
                                        <div class=\"form-group row\">
                                            <label class=\"col-xl-3 col-lg-3 col-form-label\">{{'Instagram'|__}}</label>
                                            <div class=\"col-lg-9 col-xl-6\">
                                                <input class=\"form-control\" type=\"text\" name=\"company[instagram]\" value=\"{{company.instagram}}\" required>
                                            </div>
                                        </div>
                                        <div class=\"location-complete\">
                                            <div class=\"form-group row\">
                                                <label class=\"col-xl-3 col-lg-3 col-form-label\">{{'Company Official Address'|__}}</label>
                                                <div class=\"col-lg-9 col-xl-6\">
                                                    <input type=\"text\" class=\"form-control\" id=\"address\" name=\"address\" value=\"{% if company.address %}{{company.address|__}}{% endif %}\"/>
                                                    <input type=\"hidden\" class=\"form-control\" name=\"lat\" value=\"{{company.lat}}\"/>
                                                    <input type=\"hidden\" class=\"form-control\" name=\"lng\" value=\"{{company.lng}}\"/>
                                                </div>
                                            </div>
                                            <div class=\"form-group row\">
                                                <label class=\"col-xl-3 col-lg-3 col-form-label\">{{'Google Map'|__}}</label>
                                                <div class=\"col-lg-9 col-xl-6\">
                                                    <div id=\"map_canvas\" class=\"col-sm-12\"></div>
                                                    <span class=\"form-text text-muted\">{{'Change the pin to select the right location'|__}}</span>
                                                </div>
                                            </div>
                                            <div class=\"form-group row\">
                                                <label class=\"col-xl-3 col-lg-3 col-form-label\">{{'County'|__}}</label>
                                                <div class=\"col-lg-9 col-xl-6\">
                                                    <input class=\"form-control\" type=\"text\" name=\"sublocality\" value=\"{% if company.county %}{{company.county|__}}{% endif %}\">
                                                </div>
                                            </div>
                                            <div class=\"form-group row\">
                                                <label class=\"col-xl-3 col-lg-3 col-form-label\">{{'City'|__}}</label>
                                                <div class=\"col-lg-9 col-xl-6\">
                                                    <input class=\"form-control\" type=\"text\" name=\"locality\" value=\"{% if company.city %}{{company.city|__}}{% endif %}\">
                                                </div>
                                            </div>
                                            <div class=\"form-group row\">
                                                <label class=\"col-xl-3 col-lg-3 col-form-label\">{{'State / Region'|__}}</label>
                                                <div class=\"col-lg-9 col-xl-6\">
                                                    <input class=\"form-control\" type=\"text\" name=\"administrative_area_level_1\" value=\"{% if company.state %}{{company.state|__}}{% endif %}\">
                                                </div>
                                            </div>
                                            <div class=\"form-group row\">
                                                <label class=\"col-xl-3 col-lg-3 col-form-label\">{{'Postal Code'|__}}</label>
                                                <div class=\"col-lg-9 col-xl-6\">
                                                    <input class=\"form-control\" type=\"text\" name=\"postal_code\" value=\"{% if company.postal_code %}{{company.postal_code|__}}{% endif %}\">
                                                </div>
                                            </div>
                                            <div class=\"form-group row\">
                                                <label class=\"col-xl-3 col-lg-3 col-form-label\">{{'Country'|__}}</label>
                                                <div class=\"col-lg-9 col-xl-6\">
                                                    <input class=\"form-control\" type=\"text\" name=\"country\" value=\"{% if company.country %}{{company.country|__}}{% endif %}\">
                                                </div>
                                            </div>
            \t\t\t\t\t\t\t</div>
        \t\t\t\t\t\t\t</div>
        \t\t\t\t\t\t</div>
        \t\t\t\t\t\t<div class=\"kt-section\">
        \t\t\t\t\t\t\t<div class=\"kt-section__body\">
                                        <div class=\"form-group row\">
                                            <label class=\"col-xl-3 col-lg-3 col-form-label\">{{'Company Logo'|__}}</label>
                                            <div class=\"col-lg-9 col-xl-6\">
                                                {% if Logo.isMulti %}
                                                    {% partial Logo ~ '::image-multi' %}
                                                {% else %}
                                                    {% partial Logo ~ '::image-single' %}
                                                {% endif %}
                                                <span class=\"form-text text-muted\">{{'Perfered Size'|__}} 180 x 30.</span>
                                            </div>
                                        </div>
                                        <div class=\"form-group row\">
                                            <label class=\"col-xl-3 col-lg-3 col-form-label\">{{'Mobile Logo'|__}}</label>
                                            <div class=\"col-lg-9 col-xl-6\">
                                                {% if MobileLogo.isMulti %}
                                                    {% partial MobileLogo ~ '::image-multi' %}
                                                {% else %}
                                                    {% partial MobileLogo ~ '::image-single' %}
                                                {% endif %}
                                                <span class=\"form-text text-muted\">{{'Max Height'|__}} 40px.</span>
                                            </div>
                                        </div>
                                        <div class=\"form-group row\">
                                            <label class=\"col-xl-3 col-lg-3 col-form-label\">{{'Company Favicon'|__}}</label>
                                            <div class=\"col-lg-9 col-xl-6\">
                                                {% if Favicon.isMulti %}
                                                    {% partial Favicon ~ '::image-multi' %}
                                                {% else %}
                                                    {% partial Favicon ~ '::image-single' %}
                                                {% endif %}
                                                <span class=\"form-text text-muted\">{{'Size'|__}} 48 x 48.</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
        \t\t\t\t\t</div>
        \t\t\t\t\t<div class=\"col-xl-2\"></div>
        \t\t\t\t</div>
        \t\t\t\t<div class=\"row\">
        \t\t\t\t\t<div class=\"col-xl-4\"></div>
        \t\t\t\t\t<div class=\"col-xl-8\">
                                <div class=\"form-group\">
                                    <button type=\"submit\" class=\"btn btn-primary\">{{'Save'|__}}</button>
                                </div>
                            </div>
                        </div>
                    {% elseif this.param.page == 'fees' %}
        \t\t\t\t<div class=\"row\">
        \t\t\t\t\t<div class=\"col-xl-2\"></div>
        \t\t\t\t\t<div class=\"col-xl-8\">
        \t\t\t\t\t\t<div class=\"kt-section kt-section--first\">
                                    <h3 class=\"kt-section__title kt-section__title-lg\">{{'Taxes and fees'|__}}:</h3>
        \t\t\t\t\t\t\t<div class=\"kt-section__body\">
                                        <div class=\"kt-section\">
                        \t\t\t\t\t<h5 class=\"kt-section__title kt-margin-b-20\">
                        \t\t\t\t\t\t{{'Taxes'|__}}&nbsp;<span class=\"kt-badge kt-badge--danger kt-badge--dot\"></span>
                        \t\t\t\t\t</h5>
                        \t\t\t\t\t<div class=\"kt-section__content\">
                \t\t\t\t\t\t\t\t<div class=\"row\">
                    \t\t\t\t\t\t\t\t<div class=\"form-group col-lg-6\">
                    \t\t\t\t\t\t\t\t\t<label>{{'Tax Percentage'|__}}&nbsp;<span class=\"kt-badge kt-badge--danger kt-badge--dot\"></label>
                                                        <div class=\"input-group\">
                                    \t\t\t\t\t\t<div class=\"input-group-prepend\"><span class=\"input-group-text\">%</span></div>
                    \t\t\t\t\t\t\t\t\t\t<input class=\"form-control bootstrap-touchspin-vertical-btn\" type=\"text\" name=\"taxes[percent]\" value=\"{{taxes.percent}}\" required>
                                    \t\t\t\t\t</div>
                    \t\t\t\t\t\t\t\t</div>
                    \t\t\t\t\t\t\t\t<div class=\"form-group col-lg-6\">
                    \t\t\t\t\t\t\t\t\t<label>{{'Shipping Insurance Percentage'|__}}&nbsp;<span class=\"kt-badge kt-badge--danger kt-badge--dot\"></label>
                                                        <div class=\"input-group\">
                                    \t\t\t\t\t\t<div class=\"input-group-prepend\"><span class=\"input-group-text\">%</span></div>
                    \t\t\t\t\t\t\t\t\t\t<input class=\"form-control bootstrap-touchspin-vertical-btn\" type=\"text\" name=\"taxes[insurance]\" value=\"{{taxes.insurance}}\" required>
                                    \t\t\t\t\t</div>
                    \t\t\t\t\t\t\t\t</div>
                \t\t\t\t\t\t\t\t</div>
                                            </div>
                                        </div>
                                        <div class=\"kt-separator kt-separator--border-dashed kt-separator--space-lg kt-separator--portlet-fit\"></div>
                                        <div class=\"kt-section\">
                        \t\t\t\t\t<h5 class=\"kt-section__title kt-margin-b-20\">
                        \t\t\t\t\t\t{{'Default Fees'|__}}&nbsp;<span class=\"kt-badge kt-badge--danger kt-badge--dot\"></span>
                        \t\t\t\t\t</h5>
                        \t\t\t\t\t<div class=\"kt-section__content\">
                \t\t\t\t\t\t\t\t<div class=\"row\">
                    \t\t\t\t\t\t\t\t<div class=\"form-group col-lg-6\">
                    \t\t\t\t\t\t\t\t\t<label>{{'Shipping cost'|__}}&nbsp;<span class=\"kt-badge kt-badge--danger kt-badge--dot\"></label>
                                                        <div class=\"input-group\">
                                                            {% if primary_currency.place_symbol_before == 1 %}
                                        \t\t\t\t\t\t<div class=\"input-group-prepend\"><span class=\"input-group-text\">{{primary_currency.currency_symbol}}</span></div>
                                                            {% endif %}
                    \t\t\t\t\t\t\t\t\t\t<input class=\"form-control decimal\" type=\"text\" name=\"fees[delivery_cost]\" value=\"{{fees.delivery_cost}}\" required>
                                                            {% if primary_currency.place_symbol_before == 0 %}
                                        \t\t\t\t\t\t<div class=\"input-group-append\"><span class=\"input-group-text\">{{primary_currency.currency_symbol}}</span></div>
                                                            {% endif %}
                                    \t\t\t\t\t</div>
                \t\t\t\t\t\t\t\t\t\t<span class=\"form-text text-muted\">{{'The default cost to deliver the package'|__}}</span>
                    \t\t\t\t\t\t\t\t</div>
                    \t\t\t\t\t\t\t\t<div class=\"form-group col-lg-6\">
                    \t\t\t\t\t\t\t\t\t<label>{{'Pickup cost'|__}}&nbsp;<span class=\"kt-badge kt-badge--danger kt-badge--dot\"></label>
                                                        <div class=\"input-group\">
                                                            {% if primary_currency.place_symbol_before == 1 %}
                                        \t\t\t\t\t\t<div class=\"input-group-prepend\"><span class=\"input-group-text\">{{primary_currency.currency_symbol}}</span></div>
                                                            {% endif %}
                    \t\t\t\t\t\t\t\t\t\t<input class=\"form-control decimal\" type=\"text\" name=\"fees[pickup_cost]\" value=\"{{fees.pickup_cost}}\" required>
                                                            {% if primary_currency.place_symbol_before == 0 %}
                                        \t\t\t\t\t\t<div class=\"input-group-append\"><span class=\"input-group-text\">{{primary_currency.currency_symbol}}</span></div>
                                                            {% endif %}
                                    \t\t\t\t\t</div>
                \t\t\t\t\t\t\t\t\t\t<span class=\"form-text text-muted\">{{'The default cost to receive the package from the sender'|__}}</span>
                    \t\t\t\t\t\t\t\t</div>
                \t\t\t\t\t\t\t\t</div>
                \t\t\t\t\t\t\t\t<div class=\"row\">
                                                    <div class=\"form-group col-lg-6\">
                                                        <label>{{'Delivery back cost by sender'|__}}&nbsp;<span class=\"kt-badge kt-badge--danger kt-badge--dot\"></label>
                                                        <div class=\"input-group\">
                                                            {% if primary_currency.place_symbol_before == 1 %}
                                                                <div class=\"input-group-prepend\"><span class=\"input-group-text\">{{primary_currency.currency_symbol}}</span></div>
                                                            {% endif %}
                                                            <input class=\"form-control decimal \" type=\"text\" name=\"fees[delivery_cost_back_sender]\" value=\"{{fees.delivery_cost_back_sender}}\" required>
                                                            {% if primary_currency.place_symbol_before == 0 %}
                                                                <div class=\"input-group-append\"><span class=\"input-group-text\">{{primary_currency.currency_symbol}}</span></div>
                                                            {% endif %}
                                                        </div>
                \t\t\t\t\t\t\t\t\t\t<span class=\"form-text text-muted\">{{'The default cost to return the package fees to the sender'|__}}</span>
                                                    </div>
                    \t\t\t\t\t\t\t\t<div class=\"form-group col-lg-6\">
                    \t\t\t\t\t\t\t\t\t<label>{{'Delivery back cost by receiver'|__}}&nbsp;<span class=\"kt-badge kt-badge--danger kt-badge--dot\"></label>
                                                        <div class=\"input-group\">
                                                            {% if primary_currency.place_symbol_before == 1 %}
                                        \t\t\t\t\t\t<div class=\"input-group-prepend\"><span class=\"input-group-text\">{{primary_currency.currency_symbol}}</span></div>
                                                            {% endif %}
                    \t\t\t\t\t\t\t\t\t\t<input class=\"form-control decimal \" type=\"text\" name=\"fees[delivery_cost_back_receiver]\" value=\"{{fees.delivery_cost_back_receiver}}\" required>
                                                            {% if primary_currency.place_symbol_before == 0 %}
                                        \t\t\t\t\t\t<div class=\"input-group-append\"><span class=\"input-group-text\">{{primary_currency.currency_symbol}}</span></div>
                                                            {% endif %}
                                    \t\t\t\t\t</div>
                \t\t\t\t\t\t\t\t\t\t<span class=\"form-text text-muted\">{{'The default cost to return the package fees to the sender'|__}}</span>
                    \t\t\t\t\t\t\t\t</div>
                \t\t\t\t\t\t\t\t</div>
                                            </div>
                                        </div>
                                        <div class=\"kt-separator kt-separator--border-dashed kt-separator--space-lg kt-separator--portlet-fit\"></div>
        \t\t\t\t\t\t\t</div>
        \t\t\t\t\t\t</div>
        \t\t\t\t\t</div>
        \t\t\t\t\t<div class=\"col-xl-2\"></div>
        \t\t\t\t</div>
        \t\t\t\t<div class=\"row\">
        \t\t\t\t\t<div class=\"col-xl-4\"></div>
        \t\t\t\t\t<div class=\"col-xl-8\">
                                <div class=\"form-group\">
                                    <button type=\"submit\" class=\"btn btn-primary\">{{'Save'|__}}</button>
                                </div>
                            </div>
                        </div>
        \t\t\t\t<div class=\"row\">
                            <div class=\"col-xl-2\"></div>
        \t\t\t\t\t<div class=\"col-xl-8\">

                                <div class=\"kt-separator kt-separator--border-dashed kt-separator--space-lg kt-separator--portlet-fit\"></div>
                                <div class=\"kt-section\">
                                    <h5 class=\"kt-section__title kt-margin-b-20\">
                                        {{'Fees by places'|__}}&nbsp;<span class=\"kt-badge kt-badge--danger kt-badge--dot\"></span>
                                        <div class=\"kt-section__toolbar\">
                                            <a href=\"{{url('dashboard/settings/fees/create')}}\" class=\"btn btn-success\">{{'Add New Fees'|__}}</a>
                                        </div>
                                    </h5>
                                    <div class=\"kt-section__content\">
                                        <div class=\"kt-datatable\"></div>
                                    </div>
                                </div>
                            </div>
        \t\t\t\t\t<div class=\"col-xl-2\"></div>
                        </div>
                    {% elseif this.param.page == 'invoice' %}
        \t\t\t\t<div class=\"row\">
        \t\t\t\t\t<div class=\"col-xl-2\"></div>
        \t\t\t\t\t<div class=\"col-xl-8\">
        \t\t\t\t\t\t<div class=\"kt-section kt-section--first\">
                                    <h3 class=\"kt-section__title kt-section__title-lg\">{{'Tracking and Invoice'|__}}:</h3>
        \t\t\t\t\t\t\t<div class=\"kt-section__body\">
                                        <div class=\"kt-section\">
                        \t\t\t\t\t<h5 class=\"kt-section__title kt-margin-b-20\">
                        \t\t\t\t\t\t{{'Tracking'|__}}&nbsp;<span class=\"kt-badge kt-badge--danger kt-badge--dot\"></span>
                        \t\t\t\t\t</h5>
                        \t\t\t\t\t<div class=\"kt-section__content\">
                \t\t\t\t\t\t\t\t<div class=\"row\">
                    \t\t\t\t\t\t\t\t<div class=\"form-group col-lg-6\">
                    \t\t\t\t\t\t\t\t\t<label>{{'Shipment Prefix'|__}}&nbsp;<span class=\"kt-badge kt-badge--danger kt-badge--dot\"></label>
                \t\t\t\t\t\t\t\t\t\t<input class=\"form-control\" type=\"text\" name=\"tracking[prefix_order]\" value=\"{{tracking.prefix_order}}\" required>
                    \t\t\t\t\t\t\t\t</div>
                    \t\t\t\t\t\t\t\t<div class=\"form-group col-lg-6\">
                    \t\t\t\t\t\t\t\t\t<label>{{'Shipment Number of digits in the tracking'|__}}&nbsp;<span class=\"kt-badge kt-badge--danger kt-badge--dot\"></label>
                \t\t\t\t\t\t\t\t\t\t<input class=\"form-control\" type=\"text\" name=\"tracking[numbers_order]\" value=\"{{tracking.numbers_order}}\" required>
                \t\t\t\t\t\t\t\t\t\t<span class=\"form-text text-muted\">{{'EXAMPLE'|__}}: 0000001</span>
                    \t\t\t\t\t\t\t\t</div>
                \t\t\t\t\t\t\t\t</div>
                                                <!--
                    \t\t\t\t\t\t\t\t<div class=\"row\">
                        \t\t\t\t\t\t\t\t<div class=\"form-group col-lg-6\">
                        \t\t\t\t\t\t\t\t\t<label>{{'Container Prefix'|__}}&nbsp;<span class=\"kt-badge kt-badge--danger kt-badge--dot\"></label>
                    \t\t\t\t\t\t\t\t\t\t<input class=\"form-control\" type=\"text\" name=\"tracking[prefix_container]\" value=\"{{tracking.prefix_container}}\" required>
                        \t\t\t\t\t\t\t\t</div>
                        \t\t\t\t\t\t\t\t<div class=\"form-group col-lg-6\">
                        \t\t\t\t\t\t\t\t\t<label>{{'Container Number of digits in the tracking'|__}}&nbsp;<span class=\"kt-badge kt-badge--danger kt-badge--dot\"></label>
                    \t\t\t\t\t\t\t\t\t\t<input class=\"form-control\" type=\"text\" name=\"tracking[numbers_container]\" value=\"{{tracking.numbers_container}}\" required>
                    \t\t\t\t\t\t\t\t\t\t<span class=\"form-text text-muted\">{{'EXAMPLE'|__}}: 0000001</span>
                        \t\t\t\t\t\t\t\t</div>
                                                    </div>
                                                -->
                                                <div class=\"row\">
                    \t\t\t\t\t\t\t\t<div class=\"form-group col-lg-6\">
                    \t\t\t\t\t\t\t\t\t<label>{{'Default Delivery Time'|__}}&nbsp;<span class=\"kt-badge kt-badge--danger kt-badge--dot\"></label>
                \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"tracking[default_deliverytime]\" required>
                                                            <option data-hidden=\"true\"></option>
                                                            {% for time in deliverytimes %}
                \t\t\t\t\t\t\t\t\t\t\t\t<option value=\"{{time.id}}\" {% if tracking.default_deliverytime == time.id %}selected{% endif %}>{{time.name}}</option>
                                                            {% endfor %}
                                                        </select>
                    \t\t\t\t\t\t\t\t</div>
                    \t\t\t\t\t\t\t\t<div class=\"form-group col-lg-6\">
                    \t\t\t\t\t\t\t\t\t<label>{{'Default Status Time'|__}}&nbsp;<span class=\"kt-badge kt-badge--danger kt-badge--dot\"></label>
                \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"tracking[default_status]\" required>
                                                            <option data-hidden=\"true\"></option>
                                                            {% for status in statuses %}
                \t\t\t\t\t\t\t\t\t\t\t\t<option value=\"{{status.id}}\" {% if tracking.default_status == status.id %}selected{% endif %}>{{status.name}}</option>
                                                            {% endfor %}
                                                        </select>
                    \t\t\t\t\t\t\t\t</div>
                                                </div>
                                                <div class=\"row\">
                    \t\t\t\t\t\t\t\t<div class=\"form-group col-lg-12\">
                    \t\t\t\t\t\t\t\t\t<label>{{'Default Tracking ID'|__}}&nbsp;<span class=\"kt-badge kt-badge--danger kt-badge--dot\"></label>
                \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"tracking[default_tracking_id]\" required>
                                                            <option data-hidden=\"true\"></option>
            \t\t\t\t\t\t\t\t\t\t\t\t<option value=\"1\" {% if tracking.default_tracking_id == 1 %}selected{% endif %}>{{'Country'|__}}</option>
            \t\t\t\t\t\t\t\t\t\t\t\t<option value=\"2\" {% if tracking.default_tracking_id == 2 %}selected{% endif %}>{{'State'|__}}</option>
            \t\t\t\t\t\t\t\t\t\t\t\t<option value=\"3\" {% if tracking.default_tracking_id == 3 %}selected{% endif %}>{{'City'|__}}</option>
            \t\t\t\t\t\t\t\t\t\t\t\t<option value=\"4\" {% if tracking.default_tracking_id == 4 %}selected{% endif %}>{{'Area'|__}}</option>
                                                        </select>
                \t\t\t\t\t\t\t\t\t\t<span class=\"form-text text-muted\">{{'The id that will be shown on your print label so you can detect by the id from and where this shipment will go through'|__}}</span>
                    \t\t\t\t\t\t\t\t</div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class=\"kt-separator kt-separator--border-dashed kt-separator--space-lg kt-separator--portlet-fit\"></div>
                                        <div class=\"kt-section\">
                        \t\t\t\t\t<h5 class=\"kt-section__title kt-margin-b-20\">
                        \t\t\t\t\t\t{{'Invoice'|__}}&nbsp;<span class=\"kt-badge kt-badge--danger kt-badge--dot\"></span>
                        \t\t\t\t\t</h5>
                        \t\t\t\t\t<div class=\"kt-section__content\">
                                                <div class=\"row\">
                    \t\t\t\t\t\t\t\t<div class=\"form-group col-lg-12\">
                    \t\t\t\t\t\t\t\t\t<label>{{'Default Invoice Terms'|__}}</label>
                \t\t\t\t\t\t\t\t\t\t<textarea class=\"form-control\" name=\"invoice[terms]\">{{invoice.terms}}</textarea>
                    \t\t\t\t\t\t\t\t</div>
                                                </div>
                                                <div class=\"row\">
                    \t\t\t\t\t\t\t\t<div class=\"form-group col-lg-6\">
                    \t\t\t\t\t\t\t\t\t<label>{{'Invoice Company Signing'|__}}</label>
                                                        <input class=\"form-control\" type=\"text\" name=\"invoice[signing_company]\" value=\"{{invoice.signing_company}}\">
                    \t\t\t\t\t\t\t\t</div>
                    \t\t\t\t\t\t\t\t<div class=\"form-group col-lg-6\">
                    \t\t\t\t\t\t\t\t\t<label>{{'Invoice Customer Signing'|__}}</label>
                                                        <input class=\"form-control\" type=\"text\" name=\"invoice[signing_customer]\" value=\"{{invoice.signing_customer}}\">
                    \t\t\t\t\t\t\t\t</div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class=\"kt-separator kt-separator--border-dashed kt-separator--space-lg kt-separator--portlet-fit\"></div>
        \t\t\t\t\t\t\t</div>
        \t\t\t\t\t\t</div>
        \t\t\t\t\t</div>
        \t\t\t\t\t<div class=\"col-xl-2\"></div>
        \t\t\t\t</div>
        \t\t\t\t<div class=\"row\">
        \t\t\t\t\t<div class=\"col-xl-4\"></div>
        \t\t\t\t\t<div class=\"col-xl-8\">
                                <div class=\"form-group\">
                                    <button type=\"submit\" class=\"btn btn-primary\">{{'Save'|__}}</button>
                                </div>
                            </div>
                        </div>
                    {% elseif this.param.page == 'branches' %}
                        <div class=\"kt-section kt-section--first\">
                            <div class=\"kt-section__body\">
                                <div class=\"kt-datatable\"></div>
                            </div>
                        </div>
                    {% elseif this.param.page == 'cars' %}
                        <div class=\"kt-section kt-section--first\">
                            <div class=\"kt-section__body\">
                                <div class=\"kt-datatable\"></div>
                            </div>
                        </div>
                    {% elseif this.param.page == 'statuses' %}
                        <div class=\"kt-section kt-section--first\">
                            <div class=\"kt-section__body\">
                                <div class=\"kt-datatable\"></div>
                            </div>
                        </div>
                    {% elseif this.param.page == 'treasury' %}
                        <div class=\"kt-section kt-section--first\">
                            <div class=\"kt-section__body\">
                                <div class=\"kt-datatable\"></div>
                            </div>
                        </div>
                    {% elseif this.param.page == 'categories' %}
                        <div class=\"kt-section kt-section--first\">
                            <div class=\"kt-section__body\">
                                <div class=\"kt-datatable\"></div>
                            </div>
                        </div>
                    {% elseif this.param.page == 'couriers' %}
                        <div class=\"kt-section kt-section--first\">
                            <div class=\"kt-section__body\">
                                <div class=\"kt-datatable\"></div>
                            </div>
                        </div>
                    {% elseif this.param.page == 'deliverytimes' %}
                        <div class=\"kt-section kt-section--first\">
                            <div class=\"kt-section__body\">
                                <div class=\"kt-datatable\"></div>
                            </div>
                        </div>
                    {% elseif this.param.page == 'shipping' %}
                        <div class=\"kt-section kt-section--first\">
                            <div class=\"kt-section__body\">
                                <div class=\"kt-datatable\"></div>
                            </div>
                        </div>
                    {% elseif this.param.page == 'packaging' %}
                        <div class=\"kt-section kt-section--first\">
                            <div class=\"kt-section__body\">
                                <div class=\"kt-datatable\"></div>
                            </div>
                        </div>
                    {% elseif this.param.page == 'countries' %}
                        <div class=\"kt-section kt-section--first\">
                            <div class=\"kt-section__body\">
                                <div class=\"kt-datatable\"></div>
                            </div>
                        </div>
                    {% elseif this.param.page == 'states' %}
                        <div class=\"kt-section kt-section--first\">
                            <div class=\"kt-section__body\">
                                <div class=\"kt-datatable\"></div>
                            </div>
                        </div>
                    {% elseif this.param.page == 'cities' %}
                        <div class=\"kt-section kt-section--first\">
                            <div class=\"kt-section__body\">
                                <div class=\"kt-datatable\"></div>
                            </div>
                        </div>
                    {% elseif this.param.page == 'areas' %}
                        <div class=\"kt-section kt-section--first\">
                            <div class=\"kt-section__body\">
                                <div class=\"kt-datatable\"></div>
                            </div>
                        </div>
                    {% elseif this.param.page == 'sms' %}
        \t\t\t\t<div class=\"row\">
        \t\t\t\t\t<div class=\"col-xl-2\"></div>
        \t\t\t\t\t<div class=\"col-xl-8\">
        \t\t\t\t\t\t<div class=\"kt-section kt-section--first\">
                                    <h3 class=\"kt-section__title kt-section__title-lg\">{{'SMS'|__}}:</h3>
        \t\t\t\t\t\t\t<div class=\"kt-section__body\">
        \t\t\t\t\t\t\t\t<div class=\"form-group row\">
        \t\t\t\t\t\t\t\t\t<label class=\"col-xl-3 col-lg-3 col-form-label\">{{'Enable SMS'|__}}</label>
        \t\t\t\t\t\t\t\t\t<div class=\"col-lg-9 col-xl-6\">
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" id=\"enable_sms_notification\" name=\"enable\" {% if sms.enable == 1 %}checked{% endif %}> {{'Yes'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
        \t\t\t\t\t\t\t\t\t</div>
        \t\t\t\t\t\t\t\t</div>
        \t\t\t\t\t\t\t\t<div class=\"{% if sms.enable != 1 %}kt-hidden{% endif %}\" id=\"sms_notification\">
            \t\t\t\t\t\t\t\t<div class=\"form-group row\">
            \t\t\t\t\t\t\t\t\t<label class=\"col-xl-3 col-lg-3 col-form-label\">{{'SMS Provider'|__}}&nbsp;<span class=\"kt-badge kt-badge--danger kt-badge--dot\"></span></label>
            \t\t\t\t\t\t\t\t\t<div class=\"col-lg-9 col-xl-6\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control gateway\" name=\"gateway\" required>
                                                        <option data-hidden=\"true\"></option>
        \t\t\t\t\t\t\t\t\t\t\t\t<option value=\"clickatell\" {% if sms.gateway == 'clickatell' %}selected{% endif %}>Clickatell</option>
        \t\t\t\t\t\t\t\t\t\t\t\t<!--<option value=\"twilio\" {% if notifications.provider == 'twilio' %}selected{% endif %}>Twilio</option>-->
                                                    </select>
            \t\t\t\t\t\t\t\t\t</div>
            \t\t\t\t\t\t\t\t</div>
            \t\t\t\t\t\t\t\t<div class=\"clickatell {% if sms.gateway != 'clickatell' %}kt-hidden{% endif %}\">
                \t\t\t\t\t\t\t\t<div class=\"form-group row\">
                \t\t\t\t\t\t\t\t\t<label class=\"col-xl-3 col-lg-3 col-form-label\">{{'App ID'|__}}&nbsp;<span class=\"kt-badge kt-badge--danger kt-badge--dot\"></span></label>
                \t\t\t\t\t\t\t\t\t<div class=\"col-lg-9 col-xl-6\">
                \t\t\t\t\t\t\t\t\t\t<input class=\"form-control\" type=\"text\" name=\"clickatell_api_id\" value=\"{{sms.clickatell_api_id}}\" required>
                \t\t\t\t\t\t\t\t\t</div>
                \t\t\t\t\t\t\t\t</div>
            \t\t\t\t\t\t\t\t</div>
        \t\t\t\t\t\t\t\t</div>
        \t\t\t\t\t\t\t</div>
        \t\t\t\t\t\t</div>
        \t\t\t\t\t</div>
        \t\t\t\t\t<div class=\"col-xl-2\"></div>
        \t\t\t\t</div>
        \t\t\t\t<div class=\"row\">
        \t\t\t\t\t<div class=\"col-xl-4\"></div>
        \t\t\t\t\t<div class=\"col-xl-8\">
                                <div class=\"form-group\">
                                    <button type=\"submit\" class=\"btn btn-primary\">{{'Save'|__}}</button>
                                </div>
                            </div>
                        </div>
                    {% elseif this.param.page == 'notifications' %}
        \t\t\t\t<div class=\"row\">
        \t\t\t\t\t<div class=\"col-xl-2\"></div>
        \t\t\t\t\t<div class=\"col-xl-8\">
        \t\t\t\t\t\t<div class=\"kt-section kt-section--first\">
                                    <h3 class=\"kt-section__title kt-section__title-lg\">{{'Notifications'|__}}:</h3>
        \t\t\t\t\t\t\t<div class=\"kt-section__body\">
        \t\t\t\t\t\t\t\t<div class=\"form-group row\">
        \t\t\t\t\t\t\t\t\t<label class=\"col-xl-3 col-lg-3 col-form-label\">{{'Enable Live Notification'|__}}</label>
        \t\t\t\t\t\t\t\t\t<div class=\"col-lg-9 col-xl-6\">
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" id=\"enable_live_notification\" name=\"live\" {% if notifications.live == 1 %}checked{% endif %}> {{'Yes'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
        \t\t\t\t\t\t\t\t\t</div>
        \t\t\t\t\t\t\t\t</div>
        \t\t\t\t\t\t\t\t<div class=\"{% if notifications.live != 1 %}kt-hidden{% endif %}\" id=\"live_notification\">
            \t\t\t\t\t\t\t\t<div class=\"form-group row\">
            \t\t\t\t\t\t\t\t\t<label class=\"col-xl-3 col-lg-3 col-form-label\">{{'Live Notification Provider'|__}}&nbsp;<span class=\"kt-badge kt-badge--danger kt-badge--dot\"></span></label>
            \t\t\t\t\t\t\t\t\t<div class=\"col-lg-9 col-xl-6\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control provider\" name=\"provider\" required>
                                                        <option data-hidden=\"true\"></option>
        \t\t\t\t\t\t\t\t\t\t\t\t<option value=\"pusher\" {% if notifications.provider == 'pusher' %}selected{% endif %}>Pusher</option>
                                                    </select>
            \t\t\t\t\t\t\t\t\t</div>
            \t\t\t\t\t\t\t\t</div>
            \t\t\t\t\t\t\t\t<div class=\"pusher {% if notifications.provider != 'pusher' %}kt-hidden{% endif %}\">
                \t\t\t\t\t\t\t\t<div class=\"form-group row\">
                \t\t\t\t\t\t\t\t\t<label class=\"col-xl-3 col-lg-3 col-form-label\">{{'App ID'|__}}&nbsp;<span class=\"kt-badge kt-badge--danger kt-badge--dot\"></span></label>
                \t\t\t\t\t\t\t\t\t<div class=\"col-lg-9 col-xl-6\">
                \t\t\t\t\t\t\t\t\t\t<input class=\"form-control\" type=\"text\" name=\"pusher[app_id]\" value=\"{{notifications.pusher.app_id}}\" required>
                \t\t\t\t\t\t\t\t\t</div>
                \t\t\t\t\t\t\t\t</div>
                \t\t\t\t\t\t\t\t<div class=\"form-group row\">
                \t\t\t\t\t\t\t\t\t<label class=\"col-xl-3 col-lg-3 col-form-label\">{{'Key'|__}}&nbsp;<span class=\"kt-badge kt-badge--danger kt-badge--dot\"></span></label>
                \t\t\t\t\t\t\t\t\t<div class=\"col-lg-9 col-xl-6\">
                \t\t\t\t\t\t\t\t\t\t<input class=\"form-control\" type=\"text\" name=\"pusher[key]\" value=\"{{notifications.pusher.key}}\" required>
                \t\t\t\t\t\t\t\t\t</div>
                \t\t\t\t\t\t\t\t</div>
                \t\t\t\t\t\t\t\t<div class=\"form-group row\">
                \t\t\t\t\t\t\t\t\t<label class=\"col-xl-3 col-lg-3 col-form-label\">{{'Secret'|__}}&nbsp;<span class=\"kt-badge kt-badge--danger kt-badge--dot\"></span></label>
                \t\t\t\t\t\t\t\t\t<div class=\"col-lg-9 col-xl-6\">
                \t\t\t\t\t\t\t\t\t\t<input class=\"form-control\" type=\"text\" name=\"pusher[secret]\" value=\"{{notifications.pusher.secret}}\" required>
                \t\t\t\t\t\t\t\t\t</div>
                \t\t\t\t\t\t\t\t</div>
                \t\t\t\t\t\t\t\t<div class=\"form-group row\">
                \t\t\t\t\t\t\t\t\t<label class=\"col-xl-3 col-lg-3 col-form-label\">{{'Cluster'|__}}&nbsp;<span class=\"kt-badge kt-badge--danger kt-badge--dot\"></span></label>
                \t\t\t\t\t\t\t\t\t<div class=\"col-lg-9 col-xl-6\">
                \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"pusher[cluster]\" required>
                                                            <option data-hidden=\"true\"></option>
                                                            <option {% if notifications.pusher.cluster == 'mt1' %}selected{% endif %} value=\"mt1\">mt1 (US East (N. Virginia))</option>
                                                            <option {% if notifications.pusher.cluster == 'ap1' %}selected{% endif %} value=\"ap1\">ap1 (Asia Pacific (Singapore))</option>
                                                            <option {% if notifications.pusher.cluster == 'ap2' %}selected{% endif %} value=\"ap2\">ap2 (Asia Pacific (Mumbai))</option>
                                                            <option {% if notifications.pusher.cluster == 'us2' %}selected{% endif %} value=\"us2\">us2 (US East (Ohio))</option>
                                                            <option {% if notifications.pusher.cluster == 'ap3' %}selected{% endif %} value=\"ap3\">ap3 (Asia Pacific (Tokyo))</option>
                                                            <option {% if notifications.pusher.cluster == 'us3' %}selected{% endif %} value=\"us3\">us3 (US West (Oregon))</option>
                                                            <option {% if notifications.pusher.cluster == 'ap4' %}selected{% endif %} value=\"ap4\">ap4 (Asia Pacific (Sydney))</option>
                                                            <option {% if notifications.pusher.cluster == 'eu' %}selected{% endif %} value=\"eu\">eu (EU (Ireland))</option></select>
                                                        </select>
                \t\t\t\t\t\t\t\t\t</div>
                \t\t\t\t\t\t\t\t</div>
            \t\t\t\t\t\t\t\t</div>
            \t\t\t\t\t\t\t</div>
        \t\t\t\t\t\t\t</div>
        \t\t\t\t\t\t</div>
        \t\t\t\t\t\t<div class=\"kt-section kt-section--first\">
                                    <h3 class=\"kt-section__title kt-section__title-lg\">{{'Notifications Responsibility'|__}}:</h3>
        \t\t\t\t\t\t\t<div class=\"kt-section__body\">
                                        <div class=\"form-group row\">
                                            <label class=\"col-xl-3 col-lg-3 col-form-label\">{{'New Shipments Notifications'|__}}</label>
                                            <div class=\"col-lg-9 col-xl-6\">
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[new_shipments][]\" {% if 1 in notifications.responsibility.new_shipments %}checked{% endif %} value=\"1\" required> {{'System Administrators'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[new_shipments][]\" {% if 2 in notifications.responsibility.new_shipments %}checked{% endif %} value=\"2\" required> {{'Supervisors'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[new_shipments][]\" {% if 3 in notifications.responsibility.new_shipments %}checked{% endif %} value=\"3\" required> {{'Departments Moderators'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[new_shipments][]\" {% if 4 in notifications.responsibility.new_shipments %}checked{% endif %} value=\"4\" required> {{'Departments Employees'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_departments {% if 3 not in notifications.responsibility.new_shipments and 4 not in notifications.responsibility.new_shipments %}kt-hidden{% endif %}\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[new_shipments][departments][]\" data-live-search=\"true\" multiple title=\"{{'Choose the departments'|__}}\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        {% for department in departments %}
                                                            <option value=\"{{department.id}}\" {% if department.id in notifications.responsibility.new_shipments.departments %}selected{% endif %}>{{department.name}}</option>
                                                        {% endfor %}
                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_employees\" name=\"responsibility[new_shipments][]\" {% if 5 in notifications.responsibility.new_shipments %}checked{% endif %} value=\"5\" required> {{'Employees'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_employees {% if 5 not in notifications.responsibility.new_shipments %}kt-hidden{% endif %}\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[new_shipments][employees][]\" data-live-search=\"true\" multiple title=\"{{'Choose the employees'|__}}\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        {% for employee in employees %}
                                                            <option value=\"{{employee.id}}\" {% if employee.id in notifications.responsibility.new_shipments.employees %}selected{% endif %}>{{employee.name}}</option>
                                                        {% endfor %}
                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[new_shipments][]\" {% if 6 in notifications.responsibility.new_shipments %}checked{% endif %} value=\"6\" required> {{'Sender'|__}} [{{'Client'|__}}]
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[new_shipments][]\" {% if 7 in notifications.responsibility.new_shipments %}checked{% endif %} value=\"7\" required> {{'Receiver'|__}} [{{'Client'|__}}]
                                                        <span></span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class=\"form-group row\">
                                            <label class=\"col-xl-3 col-lg-3 col-form-label\">{{'New Shipments Note Notifications'|__}}</label>
                                            <div class=\"col-lg-9 col-xl-6\">
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[new_note][]\" {% if 1 in notifications.responsibility.new_note %}checked{% endif %} value=\"1\" required> {{'System Administrators'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[new_note][]\" {% if 2 in notifications.responsibility.new_note %}checked{% endif %} value=\"2\" required> {{'Supervisors'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[new_note][]\" {% if 3 in notifications.responsibility.new_note %}checked{% endif %} value=\"3\" required> {{'Departments Moderators'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[new_note][]\" {% if 4 in notifications.responsibility.new_note %}checked{% endif %} value=\"4\" required> {{'Departments Employees'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_departments {% if 3 not in notifications.responsibility.new_note and 4 not in notifications.responsibility.new_note %}kt-hidden{% endif %}\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[new_note][departments][]\" data-live-search=\"true\" multiple title=\"{{'Choose the departments'|__}}\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        {% for department in departments %}
                                                            <option value=\"{{department.id}}\" {% if department.id in notifications.responsibility.new_note.departments %}selected{% endif %}>{{department.name}}</option>
                                                        {% endfor %}
                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_employees\" name=\"responsibility[new_note][]\" {% if 5 in notifications.responsibility.new_note %}checked{% endif %} value=\"5\" required> {{'Employees'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_employees {% if 5 not in notifications.responsibility.new_note %}kt-hidden{% endif %}\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[new_note][employees][]\" data-live-search=\"true\" multiple title=\"{{'Choose the employees'|__}}\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        {% for employee in employees %}
                                                            <option value=\"{{employee.id}}\" {% if employee.id in notifications.responsibility.new_note.employees %}selected{% endif %}>{{employee.name}}</option>
                                                        {% endfor %}
                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[new_note][]\" {% if 6 in notifications.responsibility.new_note %}checked{% endif %} value=\"6\" required> {{'Sender'|__}} [{{'Client'|__}}]
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[new_note][]\" {% if 7 in notifications.responsibility.new_note %}checked{% endif %} value=\"7\" required> {{'Receiver'|__}} [{{'Client'|__}}]
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[new_note][]\" {% if 8 in notifications.responsibility.new_note %}checked{% endif %} value=\"8\" required> {{'Responsible'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class=\"form-group row\">
                                            <label class=\"col-xl-3 col-lg-3 col-form-label\">{{'Update Shipments Notifications'|__}}</label>
                                            <div class=\"col-lg-9 col-xl-6\">
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[update_shipment][]\" {% if 1 in notifications.responsibility.update_shipment %}checked{% endif %} value=\"1\" required> {{'System Administrators'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[update_shipment][]\" {% if 2 in notifications.responsibility.update_shipment %}checked{% endif %} value=\"2\" required> {{'Supervisors'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[update_shipment][]\" {% if 3 in notifications.responsibility.update_shipment %}checked{% endif %} value=\"3\" required> {{'Departments Moderators'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[update_shipment][]\" {% if 4 in notifications.responsibility.update_shipment %}checked{% endif %} value=\"4\" required> {{'Departments Employees'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_departments {% if 3 not in notifications.responsibility.update_shipment and 4 not in notifications.responsibility.update_shipment %}kt-hidden{% endif %}\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[update_shipment][departments][]\" data-live-search=\"true\" multiple title=\"{{'Choose the departments'|__}}\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        {% for department in departments %}
                                                            <option value=\"{{department.id}}\" {% if department.id in notifications.responsibility.update_shipment.departments %}selected{% endif %}>{{department.name}}</option>
                                                        {% endfor %}
                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_employees\" name=\"responsibility[update_shipment][]\" {% if 5 in notifications.responsibility.update_shipment %}checked{% endif %} value=\"5\" required> {{'Employees'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_employees {% if 5 not in notifications.responsibility.update_shipment %}kt-hidden{% endif %}\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[update_shipment][employees][]\" data-live-search=\"true\" multiple title=\"{{'Choose the employees'|__}}\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        {% for employee in employees %}
                                                            <option value=\"{{employee.id}}\" {% if employee.id in notifications.responsibility.update_shipment.employees %}selected{% endif %}>{{employee.name}}</option>
                                                        {% endfor %}
                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[update_shipment][]\" {% if 6 in notifications.responsibility.update_shipment %}checked{% endif %} value=\"6\" required> {{'Sender'|__}} [{{'Client'|__}}]
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[update_shipment][]\" {% if 7 in notifications.responsibility.update_shipment %}checked{% endif %} value=\"7\" required> {{'Receiver'|__}} [{{'Client'|__}}]
                                                        <span></span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class=\"form-group row\">
                                            <label class=\"col-xl-3 col-lg-3 col-form-label\">{{'Approved Shipments Notifications'|__}}</label>
                                            <div class=\"col-lg-9 col-xl-6\">
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[approved_shipment][]\" {% if 1 in notifications.responsibility.approved_shipment %}checked{% endif %} value=\"1\" required> {{'System Administrators'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[approved_shipment][]\" {% if 2 in notifications.responsibility.approved_shipment %}checked{% endif %} value=\"2\" required> {{'Supervisors'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[approved_shipment][]\" {% if 3 in notifications.responsibility.approved_shipment %}checked{% endif %} value=\"3\" required> {{'Departments Moderators'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[approved_shipment][]\" {% if 4 in notifications.responsibility.approved_shipment %}checked{% endif %} value=\"4\" required> {{'Departments Employees'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_departments {% if 3 not in notifications.responsibility.approved_shipment and 4 not in notifications.responsibility.approved_shipment %}kt-hidden{% endif %}\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[approved_shipment][departments][]\" data-live-search=\"true\" multiple title=\"{{'Choose the departments'|__}}\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        {% for department in departments %}
                                                            <option value=\"{{department.id}}\" {% if department.id in notifications.responsibility.approved_shipment.departments %}selected{% endif %}>{{department.name}}</option>
                                                        {% endfor %}
                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_employees\" name=\"responsibility[approved_shipment][]\" {% if 5 in notifications.responsibility.approved_shipment %}checked{% endif %} value=\"5\" required> {{'Employees'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_employees {% if 5 not in notifications.responsibility.approved_shipment %}kt-hidden{% endif %}\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[approved_shipment][employees][]\" data-live-search=\"true\" multiple title=\"{{'Choose the employees'|__}}\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        {% for employee in employees %}
                                                            <option value=\"{{employee.id}}\" {% if employee.id in notifications.responsibility.approved_shipment.employees %}selected{% endif %}>{{employee.name}}</option>
                                                        {% endfor %}
                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[approved_shipment][]\" {% if 6 in notifications.responsibility.approved_shipment %}checked{% endif %} value=\"6\" required> {{'Sender'|__}} [{{'Client'|__}}]
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[approved_shipment][]\" {% if 7 in notifications.responsibility.approved_shipment %}checked{% endif %} value=\"7\" required> {{'Receiver'|__}} [{{'Client'|__}}]
                                                        <span></span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class=\"form-group row\">
                                            <label class=\"col-xl-3 col-lg-3 col-form-label\">{{'Refused Shipments Notifications'|__}}</label>
                                            <div class=\"col-lg-9 col-xl-6\">
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[refused_shipment][]\" {% if 1 in notifications.responsibility.refused_shipment %}checked{% endif %} value=\"1\" required> {{'System Administrators'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[refused_shipment][]\" {% if 2 in notifications.responsibility.refused_shipment %}checked{% endif %} value=\"2\" required> {{'Supervisors'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[refused_shipment][]\" {% if 3 in notifications.responsibility.refused_shipment %}checked{% endif %} value=\"3\" required> {{'Departments Moderators'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[refused_shipment][]\" {% if 4 in notifications.responsibility.refused_shipment %}checked{% endif %} value=\"4\" required> {{'Departments Employees'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_departments {% if 3 not in notifications.responsibility.refused_shipment and 4 not in notifications.responsibility.refused_shipment %}kt-hidden{% endif %}\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[refused_shipment][departments][]\" data-live-search=\"true\" multiple title=\"{{'Choose the departments'|__}}\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        {% for department in departments %}
                                                            <option value=\"{{department.id}}\" {% if department.id in notifications.responsibility.refused_shipment.departments %}selected{% endif %}>{{department.name}}</option>
                                                        {% endfor %}
                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_employees\" name=\"responsibility[refused_shipment][]\" {% if 5 in notifications.responsibility.refused_shipment %}checked{% endif %} value=\"5\" required> {{'Employees'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_employees {% if 5 not in notifications.responsibility.refused_shipment %}kt-hidden{% endif %}\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[refused_shipment][employees][]\" data-live-search=\"true\" multiple title=\"{{'Choose the employees'|__}}\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        {% for employee in employees %}
                                                            <option value=\"{{employee.id}}\" {% if employee.id in notifications.responsibility.refused_shipment.employees %}selected{% endif %}>{{employee.name}}</option>
                                                        {% endfor %}
                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[refused_shipment][]\" {% if 6 in notifications.responsibility.refused_shipment %}checked{% endif %} value=\"6\" required> {{'Sender'|__}} [{{'Client'|__}}]
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[refused_shipment][]\" {% if 7 in notifications.responsibility.refused_shipment %}checked{% endif %} value=\"7\" required> {{'Receiver'|__}} [{{'Client'|__}}]
                                                        <span></span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class=\"form-group row\">
                                            <label class=\"col-xl-3 col-lg-3 col-form-label\">{{'Postponed Shipments Notifications'|__}}</label>
                                            <div class=\"col-lg-9 col-xl-6\">
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[postponed_shipment][]\" {% if 1 in notifications.responsibility.postponed_shipment %}checked{% endif %} value=\"1\" required> {{'System Administrators'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[postponed_shipment][]\" {% if 2 in notifications.responsibility.postponed_shipment %}checked{% endif %} value=\"2\" required> {{'Supervisors'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[postponed_shipment][]\" {% if 3 in notifications.responsibility.postponed_shipment %}checked{% endif %} value=\"3\" required> {{'Departments Moderators'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[postponed_shipment][]\" {% if 4 in notifications.responsibility.postponed_shipment %}checked{% endif %} value=\"4\" required> {{'Departments Employees'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_departments {% if 3 not in notifications.responsibility.postponed_shipment and 4 not in notifications.responsibility.postponed_shipment %}kt-hidden{% endif %}\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[postponed_shipment][departments][]\" data-live-search=\"true\" multiple title=\"{{'Choose the departments'|__}}\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        {% for department in departments %}
                                                            <option value=\"{{department.id}}\" {% if department.id in notifications.responsibility.postponed_shipment.departments %}selected{% endif %}>{{department.name}}</option>
                                                        {% endfor %}
                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_employees\" name=\"responsibility[postponed_shipment][]\" {% if 5 in notifications.responsibility.postponed_shipment %}checked{% endif %} value=\"5\" required> {{'Employees'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_employees {% if 5 not in notifications.responsibility.postponed_shipment %}kt-hidden{% endif %}\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[postponed_shipment][employees][]\" data-live-search=\"true\" multiple title=\"{{'Choose the employees'|__}}\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        {% for employee in employees %}
                                                            <option value=\"{{employee.id}}\" {% if employee.id in notifications.responsibility.postponed_shipment.employees %}selected{% endif %}>{{employee.name}}</option>
                                                        {% endfor %}
                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[postponed_shipment][]\" {% if 6 in notifications.responsibility.postponed_shipment %}checked{% endif %} value=\"6\" required> {{'Sender'|__}} [{{'Client'|__}}]
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[postponed_shipment][]\" {% if 7 in notifications.responsibility.postponed_shipment %}checked{% endif %} value=\"7\" required> {{'Receiver'|__}} [{{'Client'|__}}]
                                                        <span></span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class=\"form-group row\">
                                            <label class=\"col-xl-3 col-lg-3 col-form-label\">{{'Transfered Shipments Notifications'|__}}</label>
                                            <div class=\"col-lg-9 col-xl-6\">
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[transfered_shipment][]\" {% if 1 in notifications.responsibility.transfered_shipment %}checked{% endif %} value=\"1\" required> {{'System Administrators'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[transfered_shipment][]\" {% if 2 in notifications.responsibility.transfered_shipment %}checked{% endif %} value=\"2\" required> {{'Supervisors'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[transfered_shipment][]\" {% if 3 in notifications.responsibility.transfered_shipment %}checked{% endif %} value=\"3\" required> {{'Departments Moderators'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[transfered_shipment][]\" {% if 4 in notifications.responsibility.transfered_shipment %}checked{% endif %} value=\"4\" required> {{'Departments Employees'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_departments {% if 3 not in notifications.responsibility.transfered_shipment and 4 not in notifications.responsibility.transfered_shipment %}kt-hidden{% endif %}\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[transfered_shipment][departments][]\" data-live-search=\"true\" multiple title=\"{{'Choose the departments'|__}}\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        {% for department in departments %}
                                                            <option value=\"{{department.id}}\" {% if department.id in notifications.responsibility.transfered_shipment.departments %}selected{% endif %}>{{department.name}}</option>
                                                        {% endfor %}
                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_employees\" name=\"responsibility[transfered_shipment][]\" {% if 5 in notifications.responsibility.transfered_shipment %}checked{% endif %} value=\"5\" required> {{'Employees'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_employees {% if 5 not in notifications.responsibility.transfered_shipment %}kt-hidden{% endif %}\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[transfered_shipment][employees][]\" data-live-search=\"true\" multiple title=\"{{'Choose the employees'|__}}\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        {% for employee in employees %}
                                                            <option value=\"{{employee.id}}\" {% if employee.id in notifications.responsibility.transfered_shipment.employees %}selected{% endif %}>{{employee.name}}</option>
                                                        {% endfor %}
                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[transfered_shipment][]\" {% if 6 in notifications.responsibility.transfered_shipment %}checked{% endif %} value=\"6\" required> {{'Sender'|__}} [{{'Client'|__}}]
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[transfered_shipment][]\" {% if 7 in notifications.responsibility.transfered_shipment %}checked{% endif %} value=\"7\" required> {{'Receiver'|__}} [{{'Client'|__}}]
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[transfered_shipment][]\" {% if 8 in notifications.responsibility.transfered_shipment %}checked{% endif %} value=\"8\" required> {{'Responsible'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class=\"form-group row\">
                                            <label class=\"col-xl-3 col-lg-3 col-form-label\">{{'Assigned Shipments Notifications'|__}}</label>
                                            <div class=\"col-lg-9 col-xl-6\">
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[assign_shipment][]\" {% if 1 in notifications.responsibility.assign_shipment %}checked{% endif %} value=\"1\" required> {{'System Administrators'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[assign_shipment][]\" {% if 2 in notifications.responsibility.assign_shipment %}checked{% endif %} value=\"2\" required> {{'Supervisors'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[assign_shipment][]\" {% if 3 in notifications.responsibility.assign_shipment %}checked{% endif %} value=\"3\" required> {{'Departments Moderators'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[assign_shipment][]\" {% if 4 in notifications.responsibility.assign_shipment %}checked{% endif %} value=\"4\" required> {{'Departments Employees'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_departments {% if 3 not in notifications.responsibility.assign_shipment and 4 not in notifications.responsibility.assign_shipment %}kt-hidden{% endif %}\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[assign_shipment][departments][]\" data-live-search=\"true\" multiple title=\"{{'Choose the departments'|__}}\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        {% for department in departments %}
                                                            <option value=\"{{department.id}}\" {% if department.id in notifications.responsibility.assign_shipment.departments %}selected{% endif %}>{{department.name}}</option>
                                                        {% endfor %}
                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_employees\" name=\"responsibility[assign_shipment][]\" {% if 5 in notifications.responsibility.assign_shipment %}checked{% endif %} value=\"5\" required> {{'Employees'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_employees {% if 5 not in notifications.responsibility.assign_shipment %}kt-hidden{% endif %}\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[assign_shipment][employees][]\" data-live-search=\"true\" multiple title=\"{{'Choose the employees'|__}}\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        {% for employee in employees %}
                                                            <option value=\"{{employee.id}}\" {% if employee.id in notifications.responsibility.assign_shipment.employees %}selected{% endif %}>{{employee.name}}</option>
                                                        {% endfor %}
                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[assign_shipment][]\" {% if 6 in notifications.responsibility.assign_shipment %}checked{% endif %} value=\"6\" required> {{'Sender'|__}} [{{'Client'|__}}]
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[assign_shipment][]\" {% if 7 in notifications.responsibility.assign_shipment %}checked{% endif %} value=\"7\" required> {{'Receiver'|__}} [{{'Client'|__}}]
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[assign_shipment][]\" {% if 8 in notifications.responsibility.assign_shipment %}checked{% endif %} value=\"8\" required> {{'Responsible'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class=\"form-group row\">
                                            <label class=\"col-xl-3 col-lg-3 col-form-label\">{{'Driver Received Notifications'|__}}</label>
                                            <div class=\"col-lg-9 col-xl-6\">
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[driver_received][]\" {% if 1 in notifications.responsibility.driver_received %}checked{% endif %} value=\"1\" required> {{'System Administrators'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[driver_received][]\" {% if 2 in notifications.responsibility.driver_received %}checked{% endif %} value=\"2\" required> {{'Supervisors'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[driver_received][]\" {% if 3 in notifications.responsibility.driver_received %}checked{% endif %} value=\"3\" required> {{'Departments Moderators'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[driver_received][]\" {% if 4 in notifications.responsibility.driver_received %}checked{% endif %} value=\"4\" required> {{'Departments Employees'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_departments {% if 3 not in notifications.responsibility.driver_received and 4 not in notifications.responsibility.driver_received %}kt-hidden{% endif %}\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[driver_received][departments][]\" data-live-search=\"true\" multiple title=\"{{'Choose the departments'|__}}\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        {% for department in departments %}
                                                            <option value=\"{{department.id}}\" {% if department.id in notifications.responsibility.driver_received.departments %}selected{% endif %}>{{department.name}}</option>
                                                        {% endfor %}
                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_employees\" name=\"responsibility[driver_received][]\" {% if 5 in notifications.responsibility.driver_received %}checked{% endif %} value=\"5\" required> {{'Employees'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_employees {% if 5 not in notifications.responsibility.driver_received %}kt-hidden{% endif %}\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[driver_received][employees][]\" data-live-search=\"true\" multiple title=\"{{'Choose the employees'|__}}\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        {% for employee in employees %}
                                                            <option value=\"{{employee.id}}\" {% if employee.id in notifications.responsibility.assign_shipment.employees %}selected{% endif %}>{{employee.name}}</option>
                                                        {% endfor %}
                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[driver_received][]\" {% if 6 in notifications.responsibility.driver_received %}checked{% endif %} value=\"6\" required> {{'Sender'|__}} [{{'Client'|__}}]
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[driver_received][]\" {% if 7 in notifications.responsibility.driver_received %}checked{% endif %} value=\"7\" required> {{'Receiver'|__}} [{{'Client'|__}}]
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[driver_received][]\" {% if 8 in notifications.responsibility.driver_received %}checked{% endif %} value=\"8\" required> {{'Responsible'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class=\"form-group row\">
                                            <label class=\"col-xl-3 col-lg-3 col-form-label\">{{'Discards Request Notifications'|__}}</label>
                                            <div class=\"col-lg-9 col-xl-6\">
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[discards_request][]\" {% if 1 in notifications.responsibility.discards_request %}checked{% endif %} value=\"1\" required> {{'System Administrators'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[discards_request][]\" {% if 2 in notifications.responsibility.discards_request %}checked{% endif %} value=\"2\" required> {{'Supervisors'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[discards_request][]\" {% if 3 in notifications.responsibility.discards_request %}checked{% endif %} value=\"3\" required> {{'Departments Moderators'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[discards_request][]\" {% if 4 in notifications.responsibility.discards_request %}checked{% endif %} value=\"4\" required> {{'Departments Employees'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_departments {% if 3 not in notifications.responsibility.discards_request and 4 not in notifications.responsibility.discards_request %}kt-hidden{% endif %}\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[discards_request][departments][]\" data-live-search=\"true\" multiple title=\"{{'Choose the departments'|__}}\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        {% for department in departments %}
                                                            <option value=\"{{department.id}}\" {% if department.id in notifications.responsibility.discards_request.departments %}selected{% endif %}>{{department.name}}</option>
                                                        {% endfor %}
                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_employees\" name=\"responsibility[discards_request][]\" {% if 5 in notifications.responsibility.discards_request %}checked{% endif %} value=\"5\" required> {{'Employees'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_employees {% if 5 not in notifications.responsibility.discards_request %}kt-hidden{% endif %}\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[discards_request][employees][]\" data-live-search=\"true\" multiple title=\"{{'Choose the employees'|__}}\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        {% for employee in employees %}
                                                            <option value=\"{{employee.id}}\" {% if employee.id in notifications.responsibility.assign_shipment.employees %}selected{% endif %}>{{employee.name}}</option>
                                                        {% endfor %}
                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[discards_request][]\" {% if 6 in notifications.responsibility.discards_request %}checked{% endif %} value=\"6\" required> {{'Sender'|__}} [{{'Client'|__}}]
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[discards_request][]\" {% if 7 in notifications.responsibility.discards_request %}checked{% endif %} value=\"7\" required> {{'Receiver'|__}} [{{'Client'|__}}]
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[discards_request][]\" {% if 8 in notifications.responsibility.discards_request %}checked{% endif %} value=\"8\" required> {{'Responsible'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class=\"form-group row\">
                                            <label class=\"col-xl-3 col-lg-3 col-form-label\">{{'Received Notifications'|__}}</label>
                                            <div class=\"col-lg-9 col-xl-6\">
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[received][]\" {% if 1 in notifications.responsibility.received %}checked{% endif %} value=\"1\" required> {{'System Administrators'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[received][]\" {% if 2 in notifications.responsibility.received %}checked{% endif %} value=\"2\" required> {{'Supervisors'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[received][]\" {% if 3 in notifications.responsibility.received %}checked{% endif %} value=\"3\" required> {{'Departments Moderators'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[received][]\" {% if 4 in notifications.responsibility.received %}checked{% endif %} value=\"4\" required> {{'Departments Employees'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_departments {% if 3 not in notifications.responsibility.received and 4 not in notifications.responsibility.received %}kt-hidden{% endif %}\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[received][departments][]\" data-live-search=\"true\" multiple title=\"{{'Choose the departments'|__}}\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        {% for department in departments %}
                                                            <option value=\"{{department.id}}\" {% if department.id in notifications.responsibility.received.departments %}selected{% endif %}>{{department.name}}</option>
                                                        {% endfor %}
                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_employees\" name=\"responsibility[received][]\" {% if 5 in notifications.responsibility.received %}checked{% endif %} value=\"5\" required> {{'Employees'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_employees {% if 5 not in notifications.responsibility.received %}kt-hidden{% endif %}\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[received][employees][]\" data-live-search=\"true\" multiple title=\"{{'Choose the employees'|__}}\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        {% for employee in employees %}
                                                            <option value=\"{{employee.id}}\" {% if employee.id in notifications.responsibility.assign_shipment.employees %}selected{% endif %}>{{employee.name}}</option>
                                                        {% endfor %}
                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[received][]\" {% if 6 in notifications.responsibility.received %}checked{% endif %} value=\"6\" required> {{'Sender'|__}} [{{'Client'|__}}]
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[received][]\" {% if 7 in notifications.responsibility.received %}checked{% endif %} value=\"7\" required> {{'Receiver'|__}} [{{'Client'|__}}]
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[received][]\" {% if 8 in notifications.responsibility.received %}checked{% endif %} value=\"8\" required> {{'Responsible'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class=\"form-group row\">
                                            <label class=\"col-xl-3 col-lg-3 col-form-label\">{{'Manifest Notifications'|__}}</label>
                                            <div class=\"col-lg-9 col-xl-6\">
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[manifest_assigned][]\" {% if 1 in notifications.responsibility.manifest_assigned %}checked{% endif %} value=\"1\" required> {{'System Administrators'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[manifest_assigned][]\" {% if 2 in notifications.responsibility.manifest_assigned %}checked{% endif %} value=\"2\" required> {{'Supervisors'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[manifest_assigned][]\" {% if 3 in notifications.responsibility.manifest_assigned %}checked{% endif %} value=\"3\" required> {{'Departments Moderators'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[manifest_assigned][]\" {% if 4 in notifications.responsibility.manifest_assigned %}checked{% endif %} value=\"4\" required> {{'Departments Employees'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_departments {% if 3 not in notifications.responsibility.manifest_assigned and 4 not in notifications.responsibility.manifest_assigned %}kt-hidden{% endif %}\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[manifest_assigned][departments][]\" data-live-search=\"true\" multiple title=\"{{'Choose the departments'|__}}\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        {% for department in departments %}
                                                            <option value=\"{{department.id}}\" {% if department.id in notifications.responsibility.manifest_assigned.departments %}selected{% endif %}>{{department.name}}</option>
                                                        {% endfor %}
                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_employees\" name=\"responsibility[manifest_assigned][]\" {% if 5 in notifications.responsibility.manifest_assigned %}checked{% endif %} value=\"5\" required> {{'Employees'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_employees {% if 5 not in notifications.responsibility.manifest_assigned %}kt-hidden{% endif %}\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[manifest_assigned][employees][]\" data-live-search=\"true\" multiple title=\"{{'Choose the employees'|__}}\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        {% for employee in employees %}
                                                            <option value=\"{{employee.id}}\" {% if employee.id in notifications.responsibility.assign_shipment.employees %}selected{% endif %}>{{employee.name}}</option>
                                                        {% endfor %}
                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[manifest_assigned][]\" {% if 6 in notifications.responsibility.manifest_assigned %}checked{% endif %} value=\"6\" required> {{'Sender'|__}} [{{'Client'|__}}]
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[manifest_assigned][]\" {% if 7 in notifications.responsibility.manifest_assigned %}checked{% endif %} value=\"7\" required> {{'Receiver'|__}} [{{'Client'|__}}]
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[manifest_assigned][]\" {% if 8 in notifications.responsibility.manifest_assigned %}checked{% endif %} value=\"8\" required> {{'Responsible'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class=\"form-group row\">
                                            <label class=\"col-xl-3 col-lg-3 col-form-label\">{{'Saved in stock Notifications'|__}}</label>
                                            <div class=\"col-lg-9 col-xl-6\">
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[stock_saved][]\" {% if 1 in notifications.responsibility.stock_saved %}checked{% endif %} value=\"1\" required> {{'System Administrators'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[stock_saved][]\" {% if 2 in notifications.responsibility.stock_saved %}checked{% endif %} value=\"2\" required> {{'Supervisors'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[stock_saved][]\" {% if 3 in notifications.responsibility.stock_saved %}checked{% endif %} value=\"3\" required> {{'Departments Moderators'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[stock_saved][]\" {% if 4 in notifications.responsibility.stock_saved %}checked{% endif %} value=\"4\" required> {{'Departments Employees'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_departments {% if 3 not in notifications.responsibility.stock_saved and 4 not in notifications.responsibility.stock_saved %}kt-hidden{% endif %}\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[stock_saved][departments][]\" data-live-search=\"true\" multiple title=\"{{'Choose the departments'|__}}\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        {% for department in departments %}
                                                            <option value=\"{{department.id}}\" {% if department.id in notifications.responsibility.stock_saved.departments %}selected{% endif %}>{{department.name}}</option>
                                                        {% endfor %}
                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_employees\" name=\"responsibility[stock_saved][]\" {% if 5 in notifications.responsibility.stock_saved %}checked{% endif %} value=\"5\" required> {{'Employees'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_employees {% if 5 not in notifications.responsibility.stock_saved %}kt-hidden{% endif %}\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[stock_saved][employees][]\" data-live-search=\"true\" multiple title=\"{{'Choose the employees'|__}}\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        {% for employee in employees %}
                                                            <option value=\"{{employee.id}}\" {% if employee.id in notifications.responsibility.assign_shipment.employees %}selected{% endif %}>{{employee.name}}</option>
                                                        {% endfor %}
                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[stock_saved][]\" {% if 6 in notifications.responsibility.stock_saved %}checked{% endif %} value=\"6\" required> {{'Sender'|__}} [{{'Client'|__}}]
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[stock_saved][]\" {% if 7 in notifications.responsibility.stock_saved %}checked{% endif %} value=\"7\" required> {{'Receiver'|__}} [{{'Client'|__}}]
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[stock_saved][]\" {% if 8 in notifications.responsibility.stock_saved %}checked{% endif %} value=\"8\" required> {{'Responsible'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class=\"form-group row\">
                                            <label class=\"col-xl-3 col-lg-3 col-form-label\">{{'Returned Notifications'|__}}</label>
                                            <div class=\"col-lg-9 col-xl-6\">
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[returned][]\" {% if 1 in notifications.responsibility.returned %}checked{% endif %} value=\"1\" required> {{'System Administrators'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[returned][]\" {% if 2 in notifications.responsibility.returned %}checked{% endif %} value=\"2\" required> {{'Supervisors'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[returned][]\" {% if 3 in notifications.responsibility.returned %}checked{% endif %} value=\"3\" required> {{'Departments Moderators'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[returned][]\" {% if 4 in notifications.responsibility.returned %}checked{% endif %} value=\"4\" required> {{'Departments Employees'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_departments {% if 3 not in notifications.responsibility.returned and 4 not in notifications.responsibility.returned %}kt-hidden{% endif %}\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[returned][departments][]\" data-live-search=\"true\" multiple title=\"{{'Choose the departments'|__}}\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        {% for department in departments %}
                                                            <option value=\"{{department.id}}\" {% if department.id in notifications.responsibility.returned.departments %}selected{% endif %}>{{department.name}}</option>
                                                        {% endfor %}
                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_employees\" name=\"responsibility[returned][]\" {% if 5 in notifications.responsibility.returned %}checked{% endif %} value=\"5\" required> {{'Employees'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_employees {% if 5 not in notifications.responsibility.returned %}kt-hidden{% endif %}\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[returned][employees][]\" data-live-search=\"true\" multiple title=\"{{'Choose the employees'|__}}\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        {% for employee in employees %}
                                                            <option value=\"{{employee.id}}\" {% if employee.id in notifications.responsibility.assign_shipment.employees %}selected{% endif %}>{{employee.name}}</option>
                                                        {% endfor %}
                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[returned][]\" {% if 6 in notifications.responsibility.returned %}checked{% endif %} value=\"6\" required> {{'Sender'|__}} [{{'Client'|__}}]
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[returned][]\" {% if 7 in notifications.responsibility.returned %}checked{% endif %} value=\"7\" required> {{'Receiver'|__}} [{{'Client'|__}}]
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[returned][]\" {% if 8 in notifications.responsibility.returned %}checked{% endif %} value=\"8\" required> {{'Responsible'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class=\"form-group row\">
                                            <label class=\"col-xl-3 col-lg-3 col-form-label\">{{'Delivered Notifications'|__}}</label>
                                            <div class=\"col-lg-9 col-xl-6\">
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[delivered][]\" {% if 1 in notifications.responsibility.delivered %}checked{% endif %} value=\"1\" required> {{'System Administrators'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[delivered][]\" {% if 2 in notifications.responsibility.delivered %}checked{% endif %} value=\"2\" required> {{'Supervisors'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[delivered][]\" {% if 3 in notifications.responsibility.delivered %}checked{% endif %} value=\"3\" required> {{'Departments Moderators'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[delivered][]\" {% if 4 in notifications.responsibility.delivered %}checked{% endif %} value=\"4\" required> {{'Departments Employees'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_departments {% if 3 not in notifications.responsibility.delivered and 4 not in notifications.responsibility.delivered %}kt-hidden{% endif %}\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[delivered][departments][]\" data-live-search=\"true\" multiple title=\"{{'Choose the departments'|__}}\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        {% for department in departments %}
                                                            <option value=\"{{department.id}}\" {% if department.id in notifications.responsibility.delivered.departments %}selected{% endif %}>{{department.name}}</option>
                                                        {% endfor %}
                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_employees\" name=\"responsibility[delivered][]\" {% if 5 in notifications.responsibility.delivered %}checked{% endif %} value=\"5\" required> {{'Employees'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_employees {% if 5 not in notifications.responsibility.delivered %}kt-hidden{% endif %}\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[delivered][employees][]\" data-live-search=\"true\" multiple title=\"{{'Choose the employees'|__}}\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        {% for employee in employees %}
                                                            <option value=\"{{employee.id}}\" {% if employee.id in notifications.responsibility.assign_shipment.employees %}selected{% endif %}>{{employee.name}}</option>
                                                        {% endfor %}
                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[delivered][]\" {% if 6 in notifications.responsibility.delivered %}checked{% endif %} value=\"6\" required> {{'Sender'|__}} [{{'Client'|__}}]
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[delivered][]\" {% if 7 in notifications.responsibility.delivered %}checked{% endif %} value=\"7\" required> {{'Receiver'|__}} [{{'Client'|__}}]
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[delivered][]\" {% if 8 in notifications.responsibility.delivered %}checked{% endif %} value=\"8\" required> {{'Responsible'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class=\"form-group row\">
                                            <label class=\"col-xl-3 col-lg-3 col-form-label\">{{'Return Discards Notifications'|__}}</label>
                                            <div class=\"col-lg-9 col-xl-6\">
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[return_discards][]\" {% if 1 in notifications.responsibility.return_discards %}checked{% endif %} value=\"1\" required> {{'System Administrators'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[return_discards][]\" {% if 2 in notifications.responsibility.return_discards %}checked{% endif %} value=\"2\" required> {{'Supervisors'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[return_discards][]\" {% if 3 in notifications.responsibility.return_discards %}checked{% endif %} value=\"3\" required> {{'Departments Moderators'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_departments\" name=\"responsibility[return_discards][]\" {% if 4 in notifications.responsibility.return_discards %}checked{% endif %} value=\"4\" required> {{'Departments Employees'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_departments {% if 3 not in notifications.responsibility.return_discards and 4 not in notifications.responsibility.return_discards %}kt-hidden{% endif %}\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[return_discards][departments][]\" data-live-search=\"true\" multiple title=\"{{'Choose the departments'|__}}\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        {% for department in departments %}
                                                            <option value=\"{{department.id}}\" {% if department.id in notifications.responsibility.return_discards.departments %}selected{% endif %}>{{department.name}}</option>
                                                        {% endfor %}
                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" class=\"select_employees\" name=\"responsibility[return_discards][]\" {% if 5 in notifications.responsibility.return_discards %}checked{% endif %} value=\"5\" required> {{'Employees'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single kt-padding-b-10 show_employees {% if 5 not in notifications.responsibility.return_discards %}kt-hidden{% endif %}\">
            \t\t\t\t\t\t\t\t\t\t<select class=\"form-control\" name=\"responsibility[return_discards][employees][]\" data-live-search=\"true\" multiple title=\"{{'Choose the employees'|__}}\" required>
                                                        <option data-hidden=\"true\"></option>
                                                        {% for employee in employees %}
                                                            <option value=\"{{employee.id}}\" {% if employee.id in notifications.responsibility.assign_shipment.employees %}selected{% endif %}>{{employee.name}}</option>
                                                        {% endfor %}
                                                    </select>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[return_discards][]\" {% if 6 in notifications.responsibility.return_discards %}checked{% endif %} value=\"6\" required> {{'Sender'|__}} [{{'Client'|__}}]
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[return_discards][]\" {% if 7 in notifications.responsibility.return_discards %}checked{% endif %} value=\"7\" required> {{'Receiver'|__}} [{{'Client'|__}}]
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class=\"kt-checkbox-single\">
                                                    <label class=\"kt-checkbox\">
                                                        <input type=\"checkbox\" name=\"responsibility[return_discards][]\" {% if 8 in notifications.responsibility.return_discards %}checked{% endif %} value=\"8\" required> {{'Responsible'|__}}
                                                        <span></span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
        \t\t\t\t\t</div>
        \t\t\t\t\t<div class=\"col-xl-2\"></div>
        \t\t\t\t</div>
        \t\t\t\t<div class=\"row\">
        \t\t\t\t\t<div class=\"col-xl-4\"></div>
        \t\t\t\t\t<div class=\"col-xl-8\">
                                <div class=\"form-group\">
                                    <button type=\"submit\" class=\"btn btn-primary\">{{'Save'|__}}</button>
                                </div>
                            </div>
                        </div>
                    {% elseif this.param.page == 'google' %}
        \t\t\t\t<div class=\"row\">
        \t\t\t\t\t<div class=\"col-xl-2\"></div>
        \t\t\t\t\t<div class=\"col-xl-8\">
        \t\t\t\t\t\t<div class=\"kt-section kt-section--first\">
                                    <h3 class=\"kt-section__title kt-section__title-lg\">{{'Google APIs'|__}}:</h3>
        \t\t\t\t\t\t\t<div class=\"kt-section__body\">
                                        <div class=\"kt-section\">
                        \t\t\t\t\t<h5 class=\"kt-section__title kt-margin-b-20\">
                        \t\t\t\t\t\t{{'Google Maps'|__}}&nbsp;<span class=\"kt-badge kt-badge--danger kt-badge--dot\"></span>
                        \t\t\t\t\t</h5>
                        \t\t\t\t\t<div class=\"kt-section__content\">
                                                <div class=\"form-group row\">
                                                    <label class=\"col-xl-3 col-lg-3 col-form-label\">{{'Key'|__}}</label>
                                                    <div class=\"col-lg-9 col-xl-6\">
                                                        <input class=\"form-control\" type=\"text\" name=\"map[key]\" value=\"{{google.map.key}}\" required>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class=\"kt-separator kt-separator--border-dashed kt-separator--space-lg kt-separator--portlet-fit\"></div>
                                        <div class=\"kt-section\">
                        \t\t\t\t\t<h5 class=\"kt-section__title kt-margin-b-20\">
                        \t\t\t\t\t\t{{'Recaptcha'|__}} ( V2 )&nbsp;<span class=\"kt-badge kt-badge--danger kt-badge--dot\"></span>
                        \t\t\t\t\t</h5>
                        \t\t\t\t\t<div class=\"kt-section__content\">
                                                <div class=\"form-group row\">
                                                    <label class=\"col-xl-3 col-lg-3 col-form-label\">{{'Key'|__}}</label>
                                                    <div class=\"col-lg-9 col-xl-6\">
                                                        <input class=\"form-control\" type=\"text\" name=\"recaptcha[key]\" value=\"{{google.recaptcha.key}}\" required>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class=\"kt-separator kt-separator--border-dashed kt-separator--space-lg kt-separator--portlet-fit\"></div>
        \t\t\t\t\t\t\t</div>
        \t\t\t\t\t\t</div>
        \t\t\t\t\t</div>
        \t\t\t\t\t<div class=\"col-xl-2\"></div>
        \t\t\t\t</div>
        \t\t\t\t<div class=\"row\">
        \t\t\t\t\t<div class=\"col-xl-4\"></div>
        \t\t\t\t\t<div class=\"col-xl-8\">
                                <div class=\"form-group\">
                                    <button type=\"submit\" class=\"btn btn-primary\">{{'Save'|__}}</button>
                                </div>
                            </div>
                        </div>
                    {% elseif this.param.page == 'currencies' %}
                        <div class=\"kt-section kt-section--first\">
                            <div class=\"kt-section__body\">
                                <div class=\"kt-datatable\"></div>
                            </div>
                        </div>
                    {% elseif this.param.page == 'languages' %}
                        <div class=\"kt-section kt-section--first\">
                            <div class=\"kt-section__body\">
                                <div class=\"kt-datatable\"></div>
                            </div>
                        </div>
                    {% elseif this.param.page == 'departments' %}
                        <div class=\"kt-section kt-section--first\">
                            <div class=\"kt-section__body\">
                                <div class=\"kt-datatable\"></div>
                            </div>
                        </div>
                    {% elseif this.param.page == 'employees' %}
                        <div class=\"kt-section kt-section--first\">
                            <div class=\"kt-section__body\">
                                <div class=\"kt-datatable\"></div>
                            </div>
                        </div>
                    {% elseif this.param.page == 'translate' %}
                        <div class=\"kt-section kt-section--first\">
                            <div class=\"kt-section__body\">
                                <table class=\"table table-striped- table-bordered table-hover table-checkable\" id=\"kt_table_1\">
                                \t<thead>
                                \t\t<tr>
                                \t\t\t{% for lang in languages %}
                                \t\t\t\t<th>{{lang.name}}</th>
                                \t\t\t{% endfor %}
                                \t\t</tr>
                                \t</thead>
                                </table>
                            </div>
                        </div>
                    {% elseif this.param.page == 'backup' %}
                        <div class=\"kt-section kt-section--first\">
                            <div class=\"kt-section__body\">
                                <div class=\"kt-datatable\"></div>
                            </div>
                        </div>
                    {% endif %}
                {{ form_close() }}
        \t</div>
        </div>
    </div>
</div>


{% put styles %}
    {% if this.param.page == 'company' %}
        <style>
            #map_canvas {
              height: 350px;
            }
        </style>
    {% elseif this.param.page == 'translate' %}
        <style>
            label.translate {
                display: block;
                width: 100%;
                line-height: 24px;
                min-height: 24px;
            }
        </style>
    {% endif %}
{% endput %}
{% put scripts %}
{% if this.param.page == 'company' %}
    <script src=\"{{ 'assets/admin/vendors/custom/geocomplete/jquery.geocomplete.js'|theme }}\" type=\"text/javascript\"></script>
    <script src=\"//maps.googleapis.com/maps/api/js?libraries=places&key={{settings.google.map.key}}\"></script>
{% elseif (this.param.page == 'translate' or this.param.page == 'backup' or this.param.page == 'languages' or this.param.page == 'currencies' or this.param.page == 'departments' or this.param.page == 'branches' or this.param.page == 'branches' or this.param.page == 'cars' or this.param.page == 'cars' or this.param.page == 'packaging' or this.param.page == 'countries' or this.param.page == 'states' or this.param.page == 'cities' or this.param.page == 'areas' or this.param.page == 'fees') %}
    <script src=\"{{ 'assets/admin/vendors/custom/datatables/datatables.bundle.js'|theme }}\" type=\"text/javascript\"></script>
{% endif %}
<script>
\"use strict\";
var KTAppUserListDatatable = function () {
    // variables
    var datatable;

    // init
    var init = function () {
        // init the datatables. Learn more: //keenthemes.com/metronic/?page=docs&section=datatable
        datatable = \$('.kt-datatable').KTDatatable({
            translate: {
                records: {
                    processing: '{{\"Please wait\"|__}}...',
                    noRecords: '{{\"No records found\"|__}}'
                },
                toolbar: {
                    pagination: {
                        items: {
                            default: {
                                first: '{{\"First\"|__}}',
                                prev: '{{\"Previous\"|__}}',
                                next: '{{\"Next\"|__}}',
                                last: '{{\"Last\"|__}}',
                                more: '{{\"More pages\"|__}}',
                                input: '{{\"Page number\"|__}}',
                                select: '{{\"Select page size\"|__}}'
                            },

                            //info: \"{{\"Displaying\"|__}} {{start|escape('js')}} - {{end}} {{\"of\"|__}} {{total}} {{\"records\"|__}}\"
                        }
                    }
                }
            },

            // layout definition
            layout: {
                scroll: false, // enable/disable datatable scroll both horizontal and vertical when needed.
                footer: false, // display/hide footer
            },

            // column sorting
            sortable: true,

            pagination: true,

            search: {
                input: \$('#generalSearch'),
                delay: 400,
            },
            {% if this.param.page == 'languages' %}
                // datasource definition
                data: {
                    type: 'remote',
                    source: {
                        read: {
                            url: '{{url(\"api/languages\")}}',
                        },
                    },
                    pageSize: 10, // display 20 records per page
                    serverPaging: true,
                    serverFiltering: true,
                    serverSorting: true,
                },
                // columns definition
                columns: [
                    {
                        field: 'id',
                        title: '#',
                        sortable: false,
                        width: 20,
                        selector: {
                            class: 'kt-checkbox--solid'
                        },
                        textAlign: 'center',
                    },
                    {
                        field: \"name\",
                        title: \"{{'Name'|__}}\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                    },
                    {
                        field: \"code\",
                        title: \"{{'Code'|__}}\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                    },
                    {
                        field: \"is_enabled\",
                        title: \"{{'Enabled'|__}}\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
        \t\t\t\t// callback function support for column rendering
        \t\t\t\ttemplate: function(row) {

        \t\t\t\t\tvar status = {
                                1: {
                                    'title': '{{\"Yes\"|__}}',
                                    'class': 'success'
                                },
        \t\t\t\t\t\t0: {
        \t\t\t\t\t\t\t'title': '{{\"No\"|__}}',
        \t\t\t\t\t\t\t'class': 'danger'
        \t\t\t\t\t\t},
        \t\t\t\t\t\t'null': {
        \t\t\t\t\t\t\t'title': '{{\"No\"|__}}',
        \t\t\t\t\t\t\t'class': 'danger'
        \t\t\t\t\t\t},
        \t\t\t\t\t};
                            return '<span class=\"kt-badge kt-badge--' + status[row.is_enabled].class + ' kt-badge--dot\"></span>&nbsp;<span class=\"kt-font-bold kt-font-' + status[row.is_enabled].class + '\">' + status[row.is_enabled].title + '</span>';
        \t\t\t\t}
                    },{
        \t\t\t\tfield: \"is_default\",
        \t\t\t\ttitle: \"{{'Default'|__}}\",
        \t\t\t\twidth: 'auto',
                        sortable: true,
                        width: 120,
        \t\t\t\t// callback function support for column rendering
        \t\t\t\ttemplate: function(row) {

        \t\t\t\t\tvar status = {
                                1: {
                                    'title': '{{\"Yes\"|__}}',
                                    'class': 'success'
                                },
        \t\t\t\t\t\t0: {
        \t\t\t\t\t\t\t'title': '{{\"No\"|__}}',
        \t\t\t\t\t\t\t'class': 'danger'
        \t\t\t\t\t\t},
        \t\t\t\t\t\t'null': {
        \t\t\t\t\t\t\t'title': '{{\"No\"|__}}',
        \t\t\t\t\t\t\t'class': 'danger'
        \t\t\t\t\t\t},
        \t\t\t\t\t};
                            return '<span class=\"kt-badge kt-badge--' + status[row.is_default].class + ' kt-badge--dot\"></span>&nbsp;<span class=\"kt-font-bold kt-font-' + status[row.is_default].class + '\">' + status[row.is_default].title + '</span>';
        \t\t\t\t}
                    },
                    {
                        field: \"Actions\",
                        width: 'auto',
                        title: \"{{'Actions'|__}}\",
                        sortable: false,
                        autoHide: false,
                        overflow: 'visible',
                        template: function (data) {
                                {% if (user.hasUserPermission('languages', 'u') or user.hasUserPermission('languages', 'd')) %}
                                    return '' +
                                    '<div class=\"btn-group btn-group\" role=\"group\" aria-label=\"...\">'+
                                        {% if user.hasUserPermission('languages', 'u') %}
                                        '<a href=\"{{url(\"dashboard/settings/languages\")}}/'+data.id+'/edit\" class=\"btn btn-info btn-sm\"><i class=\"flaticon-edit\"></i>&nbsp;{{\"Edit\"|__}}</button>'+
                                        {% endif %}
                                        {% if user.hasUserPermission('languages', 'd') %}
                                        '<a href=\"javascript:void(0);\" class=\"btn btn-danger btn-sm delete_record kt-font-light\" rel=\"'+data.id+'\" data-type=\"languages\"><i class=\"flaticon2-delete\"></i>&nbsp;{{\"Delete\"|__}}</a>'+
                                        {% endif %}
                                    '</div>';
                                {% else %}
                                    return '-';
                                {% endif %}
                        },
                    }
                ]
            {% elseif this.param.page == 'currencies' %}
                // datasource definition
                data: {
                    type: 'remote',
                    source: {
                        read: {
                            url: '{{url(\"api/currencies\")}}',
                        },
                    },
                    pageSize: 10, // display 20 records per page
                    serverPaging: true,
                    serverFiltering: true,
                    serverSorting: true,
                },
                // columns definition
                columns: [
                    {
                        field: 'id',
                        title: '#',
                        sortable: false,
                        width: 20,
                        selector: {
                            class: 'kt-checkbox--solid'
                        },
                        textAlign: 'center',
                    },
                    {
                        field: \"name\",
                        title: \"{{'Name'|__}}\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                    },
                    {
                        field: \"code\",
                        title: \"{{'Code'|__}}\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                    },
                    {
                        field: \"is_enabled\",
                        title: \"{{'Enabled'|__}}\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
        \t\t\t\t// callback function support for column rendering
        \t\t\t\ttemplate: function(row) {

        \t\t\t\t\tvar status = {
                                1: {
                                    'title': '{{\"Yes\"|__}}',
                                    'class': 'success'
                                },
        \t\t\t\t\t\t0: {
        \t\t\t\t\t\t\t'title': '{{\"No\"|__}}',
        \t\t\t\t\t\t\t'class': 'danger'
        \t\t\t\t\t\t},
        \t\t\t\t\t\t'null': {
        \t\t\t\t\t\t\t'title': '{{\"No\"|__}}',
        \t\t\t\t\t\t\t'class': 'danger'
        \t\t\t\t\t\t},
        \t\t\t\t\t};
                            return '<span class=\"kt-badge kt-badge--' + status[row.is_enabled].class + ' kt-badge--dot\"></span>&nbsp;<span class=\"kt-font-bold kt-font-' + status[row.is_enabled].class + '\">' + status[row.is_enabled].title + '</span>';
        \t\t\t\t}
                    },{
        \t\t\t\tfield: \"is_default\",
        \t\t\t\ttitle: \"{{'Default'|__}}\",
        \t\t\t\twidth: 'auto',
                        sortable: true,
                        width: 120,
        \t\t\t\t// callback function support for column rendering
        \t\t\t\ttemplate: function(row) {

        \t\t\t\t\tvar status = {
                                1: {
                                    'title': '{{\"Yes\"|__}}',
                                    'class': 'success'
                                },
        \t\t\t\t\t\t0: {
        \t\t\t\t\t\t\t'title': '{{\"No\"|__}}',
        \t\t\t\t\t\t\t'class': 'danger'
        \t\t\t\t\t\t},
        \t\t\t\t\t\t'null': {
        \t\t\t\t\t\t\t'title': '{{\"No\"|__}}',
        \t\t\t\t\t\t\t'class': 'danger'
        \t\t\t\t\t\t},
        \t\t\t\t\t};
                            return '<span class=\"kt-badge kt-badge--' + status[row.is_default].class + ' kt-badge--dot\"></span>&nbsp;<span class=\"kt-font-bold kt-font-' + status[row.is_default].class + '\">' + status[row.is_default].title + '</span>';
        \t\t\t\t}
                    },
                    {
                        field: \"Actions\",
                        width: 'auto',
                        title: \"{{'Actions'|__}}\",
                        sortable: false,
                        autoHide: false,
                        overflow: 'visible',
                        template: function (data) {
                                {% if (user.hasUserPermission('currencies', 'u') or user.hasUserPermission('currencies', 'd')) %}
                                    return '' +
                                    '<div class=\"btn-group btn-group\" role=\"group\" aria-label=\"...\">'+
                                        {% if user.hasUserPermission('currencies', 'u') %}
                                        '<a href=\"{{url(\"dashboard/settings/currencies\")}}/'+data.id+'/edit\" class=\"btn btn-info btn-sm\"><i class=\"flaticon-edit\"></i>&nbsp;{{\"Edit\"|__}}</button>'+
                                        {% endif %}
                                        {% if user.hasUserPermission('currencies', 'd') %}
                                        '<a href=\"javascript:void(0);\" class=\"btn btn-danger btn-sm delete_record kt-font-light\" rel=\"'+data.id+'\" data-type=\"currencies\"><i class=\"flaticon2-delete\"></i>&nbsp;{{\"Delete\"|__}}</a>'+
                                        {% endif %}
                                    '</div>';
                                {% else %}
                                    return '-';
                                {% endif %}
                        },
                    }
                ]
            {% elseif this.param.page == 'departments' %}
                // datasource definition
                data: {
                    type: 'remote',
                    source: {
                        read: {
                            url: '{{url(\"api/departments\")}}',
                        },
                    },
                    pageSize: 10, // display 20 records per page
                    serverPaging: true,
                    serverFiltering: true,
                    serverSorting: true,
                },
                // columns definition
                columns: [
                    {
                        field: 'id',
                        title: '#',
                        sortable: false,
                        width: 20,
                        selector: {
                            class: 'kt-checkbox--solid'
                        },
                        textAlign: 'center',
                    },
                    {
                        field: \"name\",
                        title: \"{{'Name'|__}}\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                    },
                    {
                        field: \"code\",
                        title: \"{{'Code'|__}}\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                    },
                    {
                        field: \"Actions\",
                        width: 'auto',
                        title: \"{{'Actions'|__}}\",
                        sortable: false,
                        autoHide: false,
                        overflow: 'visible',
                        template: function (data) {
                                {% if (user.hasUserPermission('departments', 'u') or user.hasUserPermission('departments', 'd')) %}
                                    return '' +
                                    '<div class=\"btn-group btn-group\" role=\"group\" aria-label=\"...\">'+
                                        {% if user.hasUserPermission('departments', 'u') %}
                                        '<a href=\"{{url(\"dashboard/settings/departments\")}}/'+data.id+'/edit\" class=\"btn btn-info btn-sm\"><i class=\"flaticon-edit\"></i>&nbsp;{{\"Edit\"|__}}</button>'+
                                        {% endif %}
                                        {% if user.hasUserPermission('departments', 'd') %}
                                        '<a href=\"javascript:void(0);\" class=\"btn btn-danger btn-sm delete_record kt-font-light\" rel=\"'+data.id+'\" data-type=\"departments\"><i class=\"flaticon2-delete\"></i>&nbsp;{{\"Delete\"|__}}</a>'+
                                        {% endif %}
                                    '</div>';
                                {% else %}
                                    return '-';
                                {% endif %}
                        },
                    }
                ]
            {% elseif this.param.page == 'branches' %}
                // datasource definition
                data: {
                    type: 'remote',
                    source: {
                        read: {
                            url: '{{url(\"api/branches\")}}',
                        },
                    },
                    pageSize: 10, // display 20 records per page
                    serverPaging: true,
                    serverFiltering: true,
                    serverSorting: true,
                },
                // columns definition
                columns: [
                    {
                        field: 'id',
                        title: '#',
                        sortable: false,
                        width: 20,
                        selector: {
                            class: 'kt-checkbox--solid'
                        },
                        textAlign: 'center',
                    },
                    {
                        field: \"name\",
                        title: \"{{'Name'|__}}\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                    },
                    {
                        field: \"Actions\",
                        width: 'auto',
                        title: \"{{'Actions'|__}}\",
                        sortable: false,
                        autoHide: false,
                        overflow: 'visible',
                        template: function (data) {
                                {% if (user.hasUserPermission('branches', 'u') or user.hasUserPermission('packaging', 'd')) %}
                                    return '' +
                                    '<div class=\"btn-group btn-group\" role=\"group\" aria-label=\"...\">'+
                                        {% if user.hasUserPermission('branches', 'u') %}
                                        '<a href=\"{{url(\"dashboard/settings/branches\")}}/'+data.id+'/edit\" class=\"btn btn-info btn-sm\"><i class=\"flaticon-edit\"></i>&nbsp;{{\"Edit\"|__}}</button>'+
                                        {% endif %}
                                        {% if user.hasUserPermission('branches', 'd') %}
                                        '<a href=\"javascript:void(0);\" class=\"btn btn-danger btn-sm delete_record kt-font-light\" rel=\"'+data.id+'\" data-type=\"branches\"><i class=\"flaticon2-delete\"></i>&nbsp;{{\"Delete\"|__}}</a>'+
                                        {% endif %}
                                    '</div>';
                                {% else %}
                                    return '-';
                                {% endif %}
                        },
                    }
                ]
            {% elseif this.param.page == 'cars' %}
                // datasource definition
                data: {
                    type: 'remote',
                    source: {
                        read: {
                            url: '{{url(\"api/cars\")}}',
                        },
                    },
                    pageSize: 10, // display 20 records per page
                    serverPaging: true,
                    serverFiltering: true,
                    serverSorting: true,
                },
                // columns definition
                columns: [
                    {
                        field: 'id',
                        title: '#',
                        sortable: false,
                        width: 20,
                        selector: {
                            class: 'kt-checkbox--solid'
                        },
                        textAlign: 'center',
                    },
                    {
                        field: \"name\",
                        title: \"{{'Name'|__}}\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                    },
                    {
                        field: \"Actions\",
                        width: 'auto',
                        title: \"{{'Actions'|__}}\",
                        sortable: false,
                        autoHide: false,
                        overflow: 'visible',
                        template: function (data) {
                                {% if (user.hasUserPermission('cars', 'u') or user.hasUserPermission('packaging', 'd')) %}
                                    return '' +
                                    '<div class=\"btn-group btn-group\" role=\"group\" aria-label=\"...\">'+
                                        {% if user.hasUserPermission('cars', 'u') %}
                                        '<a href=\"{{url(\"dashboard/settings/cars\")}}/'+data.id+'/edit\" class=\"btn btn-info btn-sm\"><i class=\"flaticon-edit\"></i>&nbsp;{{\"Edit\"|__}}</button>'+
                                        {% endif %}
                                        {% if user.hasUserPermission('cars', 'd') %}
                                        '<a href=\"javascript:void(0);\" class=\"btn btn-danger btn-sm delete_record kt-font-light\" rel=\"'+data.id+'\" data-type=\"cars\"><i class=\"flaticon2-delete\"></i>&nbsp;{{\"Delete\"|__}}</a>'+
                                        {% endif %}
                                    '</div>';
                                {% else %}
                                    return '-';
                                {% endif %}
                        },
                    }
                ]
            {% elseif this.param.page == 'statuses' %}
                // datasource definition
                data: {
                    type: 'remote',
                    source: {
                        read: {
                            url: '{{url(\"api/statuses\")}}',
                        },
                    },
                    pageSize: 10, // display 20 records per page
                    serverPaging: true,
                    serverFiltering: true,
                    serverSorting: true,
                },
                // columns definition
                columns: [
                    {
                        field: 'id',
                        title: '#',
                        sortable: false,
                        width: 20,
                        selector: {
                            class: 'kt-checkbox--solid'
                        },
                        textAlign: 'center',
                    },
                    {
                        field: \"name\",
                        title: \"{{'Name'|__}}\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                    },
                    {
                        field: \"Actions\",
                        width: 'auto',
                        title: \"{{'Actions'|__}}\",
                        sortable: false,
                        autoHide: false,
                        overflow: 'visible',
                        template: function (data) {
                                {% if (user.hasUserPermission('statuses', 'u') or user.hasUserPermission('statuses', 'd')) %}
                                    return '' +
                                    '<div class=\"btn-group btn-group\" role=\"group\" aria-label=\"...\">'+
                                        {% if user.hasUserPermission('statuses', 'u') %}
                                        '<a href=\"{{url(\"dashboard/settings/statuses\")}}/'+data.id+'/edit\" class=\"btn btn-info btn-sm\"><i class=\"flaticon-edit\"></i>&nbsp;{{\"Edit\"|__}}</button>'+
                                        {% endif %}
                                        {% if user.hasUserPermission('statuses', 'd') %}
                                        '<a href=\"javascript:void(0);\" class=\"btn btn-danger btn-sm delete_record kt-font-light\" rel=\"'+data.id+'\" data-type=\"statuses\"><i class=\"flaticon2-delete\"></i>&nbsp;{{\"Delete\"|__}}</a>'+
                                        {% endif %}
                                    '</div>';
                                {% else %}
                                    return '-';
                                {% endif %}
                        },
                    }
                ]
            {% elseif this.param.page == 'treasury' %}
                // datasource definition
                data: {
                    type: 'remote',
                    source: {
                        read: {
                            url: '{{url(\"api/treasury\")}}',
                        },
                    },
                    pageSize: 10, // display 20 records per page
                    serverPaging: true,
                    serverFiltering: true,
                    serverSorting: true,
                },
                // columns definition
                columns: [
                    {
                        field: 'id',
                        title: '#',
                        sortable: false,
                        width: 20,
                        selector: {
                            class: 'kt-checkbox--solid'
                        },
                        textAlign: 'center',
                    },
                    {
                        field: \"name\",
                        title: \"{{'Name'|__}}\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                        template: function (data) {
                            return '<a href=\"{{url(\"dashboard/treasury\")}}/' + data.id + '/view\">' + data.name + '</a>';
                        },
                    },
                    {
                        field: \"balance\",
                        title: \"{{'Balance'|__}}\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                    },
                    {
                        field: \"office\",
                        title: \"{{'Office'|__}}\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                    },
                    {
                        field: \"Actions\",
                        width: 'auto',
                        title: \"{{'Actions'|__}}\",
                        sortable: false,
                        autoHide: false,
                        overflow: 'visible',
                        template: function (data) {
                                {% if (user.hasUserPermission('treasury', 'u') or user.hasUserPermission('treasury', 'd')) %}
                                    return '' +
                                    '<div class=\"btn-group btn-group\" role=\"group\" aria-label=\"...\">'+
                                        {% if user.hasUserPermission('treasury', 'u') %}
                                        '<a href=\"{{url(\"dashboard/settings/treasury\")}}/'+data.id+'/edit\" class=\"btn btn-info btn-sm\"><i class=\"flaticon-edit\"></i>&nbsp;{{\"Edit\"|__}}</button>'+
                                        {% endif %}
                                        {% if user.hasUserPermission('treasury', 'd') %}
                                        '<a href=\"javascript:void(0);\" class=\"btn btn-danger btn-sm delete_record kt-font-light\" rel=\"'+data.id+'\" data-type=\"treasury\"><i class=\"flaticon2-delete\"></i>&nbsp;{{\"Delete\"|__}}</a>'+
                                        {% endif %}
                                    '</div>';
                                {% else %}
                                    return '-';
                                {% endif %}
                        },
                    }
                ]
            {% elseif this.param.page == 'categories' %}
                // datasource definition
                data: {
                    type: 'remote',
                    source: {
                        read: {
                            url: '{{url(\"api/categories\")}}',
                        },
                    },
                    pageSize: 10, // display 20 records per page
                    serverPaging: true,
                    serverFiltering: true,
                    serverSorting: true,
                },
                // columns definition
                columns: [
                    {
                        field: 'id',
                        title: '#',
                        sortable: false,
                        width: 20,
                        selector: {
                            class: 'kt-checkbox--solid'
                        },
                        textAlign: 'center',
                    },
                    {
                        field: \"name\",
                        title: \"{{'Name'|__}}\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                    },
                    {
                        field: \"Actions\",
                        width: 'auto',
                        title: \"{{'Actions'|__}}\",
                        sortable: false,
                        autoHide: false,
                        overflow: 'visible',
                        template: function (data) {
                                {% if (user.hasUserPermission('category', 'u') or user.hasUserPermission('category', 'd')) %}
                                    return '' +
                                    '<div class=\"btn-group btn-group\" role=\"group\" aria-label=\"...\">'+
                                        {% if user.hasUserPermission('category', 'u') %}
                                        '<a href=\"{{url(\"dashboard/settings/categories\")}}/'+data.id+'/edit\" class=\"btn btn-info btn-sm\"><i class=\"flaticon-edit\"></i>&nbsp;{{\"Edit\"|__}}</button>'+
                                        {% endif %}
                                        {% if user.hasUserPermission('category', 'd') %}
                                        '<a href=\"javascript:void(0);\" class=\"btn btn-danger btn-sm delete_record kt-font-light\" rel=\"'+data.id+'\" data-type=\"categories\"><i class=\"flaticon2-delete\"></i>&nbsp;{{\"Delete\"|__}}</a>'+
                                        {% endif %}
                                    '</div>';
                                {% else %}
                                    return '-';
                                {% endif %}
                        },
                    }
                ]
            {% elseif this.param.page == 'couriers' %}
                // datasource definition
                data: {
                    type: 'remote',
                    source: {
                        read: {
                            url: '{{url(\"api/couriers\")}}',
                        },
                    },
                    pageSize: 10, // display 20 records per page
                    serverPaging: true,
                    serverFiltering: true,
                    serverSorting: true,
                },
                // columns definition
                columns: [
                    {
                        field: 'id',
                        title: '#',
                        sortable: false,
                        width: 20,
                        selector: {
                            class: 'kt-checkbox--solid'
                        },
                        textAlign: 'center',
                    },
                    {
                        field: \"name\",
                        title: \"{{'Name'|__}}\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                    },
                    {
                        field: \"Actions\",
                        width: 'auto',
                        title: \"{{'Actions'|__}}\",
                        sortable: false,
                        autoHide: false,
                        overflow: 'visible',
                        template: function (data) {
                                {% if (user.hasUserPermission('couriers', 'u') or user.hasUserPermission('couriers', 'd')) %}
                                    return '' +
                                    '<div class=\"btn-group btn-group\" role=\"group\" aria-label=\"...\">'+
                                        {% if user.hasUserPermission('category', 'u') %}
                                        '<a href=\"{{url(\"dashboard/settings/couriers\")}}/'+data.id+'/edit\" class=\"btn btn-info btn-sm\"><i class=\"flaticon-edit\"></i>&nbsp;{{\"Edit\"|__}}</button>'+
                                        {% endif %}
                                        {% if user.hasUserPermission('couriers', 'd') %}
                                        '<a href=\"javascript:void(0);\" class=\"btn btn-danger btn-sm delete_record kt-font-light\" rel=\"'+data.id+'\" data-type=\"couriers\"><i class=\"flaticon2-delete\"></i>&nbsp;{{\"Delete\"|__}}</a>'+
                                        {% endif %}
                                    '</div>';
                                {% else %}
                                    return '-';
                                {% endif %}
                        },
                    }
                ]
            {% elseif this.param.page == 'deliverytimes' %}
                // datasource definition
                data: {
                    type: 'remote',
                    source: {
                        read: {
                            url: '{{url(\"api/deliverytimes\")}}',
                        },
                    },
                    pageSize: 10, // display 20 records per page
                    serverPaging: true,
                    serverFiltering: true,
                    serverSorting: true,
                },
                // columns definition
                columns: [
                    {
                        field: 'id',
                        title: '#',
                        sortable: false,
                        width: 20,
                        selector: {
                            class: 'kt-checkbox--solid'
                        },
                        textAlign: 'center',
                    },
                    {
                        field: \"name\",
                        title: \"{{'Name'|__}}\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                    },
                    {
                        field: \"Actions\",
                        width: 'auto',
                        title: \"{{'Actions'|__}}\",
                        sortable: false,
                        autoHide: false,
                        overflow: 'visible',
                        template: function (data) {
                                {% if (user.hasUserPermission('deliverytimes', 'u') or user.hasUserPermission('deliverytimes', 'd')) %}
                                    return '' +
                                    '<div class=\"btn-group btn-group\" role=\"group\" aria-label=\"...\">'+
                                        {% if user.hasUserPermission('category', 'u') %}
                                        '<a href=\"{{url(\"dashboard/settings/deliverytimes\")}}/'+data.id+'/edit\" class=\"btn btn-info btn-sm\"><i class=\"flaticon-edit\"></i>&nbsp;{{\"Edit\"|__}}</button>'+
                                        {% endif %}
                                        {% if user.hasUserPermission('deliverytimes', 'd') %}
                                        '<a href=\"javascript:void(0);\" class=\"btn btn-danger btn-sm delete_record kt-font-light\" rel=\"'+data.id+'\" data-type=\"deliverytimes\"><i class=\"flaticon2-delete\"></i>&nbsp;{{\"Delete\"|__}}</a>'+
                                        {% endif %}
                                    '</div>';
                                {% else %}
                                    return '-';
                                {% endif %}
                        },
                    }
                ]
            {% elseif this.param.page == 'shipping' %}
                // datasource definition
                data: {
                    type: 'remote',
                    source: {
                        read: {
                            url: '{{url(\"api/shipping\")}}',
                        },
                    },
                    pageSize: 10, // display 20 records per page
                    serverPaging: true,
                    serverFiltering: true,
                    serverSorting: true,
                },
                // columns definition
                columns: [
                    {
                        field: 'id',
                        title: '#',
                        sortable: false,
                        width: 20,
                        selector: {
                            class: 'kt-checkbox--solid'
                        },
                        textAlign: 'center',
                    },
                    {
                        field: \"name\",
                        title: \"{{'Name'|__}}\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                    },
                    {
                        field: \"Actions\",
                        width: 'auto',
                        title: \"{{'Actions'|__}}\",
                        sortable: false,
                        autoHide: false,
                        overflow: 'visible',
                        template: function (data) {
                                {% if (user.hasUserPermission('shipping', 'u') or user.hasUserPermission('shipping', 'd')) %}
                                    return '' +
                                    '<div class=\"btn-group btn-group\" role=\"group\" aria-label=\"...\">'+
                                        {% if user.hasUserPermission('shipping', 'u') %}
                                        '<a href=\"{{url(\"dashboard/settings/shipping\")}}/'+data.id+'/edit\" class=\"btn btn-info btn-sm\"><i class=\"flaticon-edit\"></i>&nbsp;{{\"Edit\"|__}}</button>'+
                                        {% endif %}
                                        {% if user.hasUserPermission('shipping', 'd') %}
                                        '<a href=\"javascript:void(0);\" class=\"btn btn-danger btn-sm delete_record kt-font-light\" rel=\"'+data.id+'\" data-type=\"shipping\"><i class=\"flaticon2-delete\"></i>&nbsp;{{\"Delete\"|__}}</a>'+
                                        {% endif %}
                                    '</div>';
                                {% else %}
                                    return '-';
                                {% endif %}
                        },
                    }
                ]
            {% elseif this.param.page == 'packaging' %}
                // datasource definition
                data: {
                    type: 'remote',
                    source: {
                        read: {
                            url: '{{url(\"api/packaging\")}}',
                        },
                    },
                    pageSize: 10, // display 20 records per page
                    serverPaging: true,
                    serverFiltering: true,
                    serverSorting: true,
                },
                // columns definition
                columns: [
                    {
                        field: 'id',
                        title: '#',
                        sortable: false,
                        width: 20,
                        selector: {
                            class: 'kt-checkbox--solid'
                        },
                        textAlign: 'center',
                    },
                    {
                        field: \"name\",
                        title: \"{{'Name'|__}}\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                    },
                    {
                        field: \"Actions\",
                        width: 'auto',
                        title: \"{{'Actions'|__}}\",
                        sortable: false,
                        autoHide: false,
                        overflow: 'visible',
                        template: function (data) {
                                {% if (user.hasUserPermission('packaging', 'u') or user.hasUserPermission('packaging', 'd')) %}
                                    return '' +
                                    '<div class=\"btn-group btn-group\" role=\"group\" aria-label=\"...\">'+
                                        {% if user.hasUserPermission('packaging', 'u') %}
                                        '<a href=\"{{url(\"dashboard/settings/packaging\")}}/'+data.id+'/edit\" class=\"btn btn-info btn-sm\"><i class=\"flaticon-edit\"></i>&nbsp;{{\"Edit\"|__}}</button>'+
                                        {% endif %}
                                        {% if user.hasUserPermission('packaging', 'd') %}
                                        '<a href=\"javascript:void(0);\" class=\"btn btn-danger btn-sm delete_record kt-font-light\" rel=\"'+data.id+'\" data-type=\"packaging\"><i class=\"flaticon2-delete\"></i>&nbsp;{{\"Delete\"|__}}</a>'+
                                        {% endif %}
                                    '</div>';
                                {% else %}
                                    return '-';
                                {% endif %}
                        },
                    }
                ]
            {% elseif this.param.page == 'countries' %}
                // datasource definition
                data: {
                    type: 'remote',
                    source: {
                        read: {
                            url: '{{url(\"api/countries\")}}',
                        },
                    },
                    pageSize: 10, // display 20 records per page
                    serverPaging: true,
                    serverFiltering: true,
                    serverSorting: true,
                },
                // columns definition
                columns: [
                    {
                        field: 'id',
                        title: '#',
                        sortable: false,
                        width: 20,
                        selector: {
                            class: 'kt-checkbox--solid'
                        },
                        textAlign: 'center',
                    },
                    {
                        field: \"number\",
                        title: \"{{'ID'|__}}\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                        template: function (data) {
                            return data.id;
                        },
                    },
                    {
                        field: \"name\",
                        title: \"{{'Name'|__}}\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                    },
                    {
                        field: \"Actions\",
                        width: 'auto',
                        title: \"{{'Actions'|__}}\",
                        sortable: false,
                        autoHide: false,
                        overflow: 'visible',
                        template: function (data) {
                                {% if (user.hasUserPermission('countries', 'u') or user.hasUserPermission('countries', 'd')) %}
                                    return '' +
                                    '<div class=\"btn-group btn-group\" role=\"group\" aria-label=\"...\">'+
                                        {% if user.hasUserPermission('countries', 'u') %}
                                        '<a href=\"{{url(\"dashboard/settings/countries\")}}/'+data.id+'/edit\" class=\"btn btn-info btn-sm\"><i class=\"flaticon-edit\"></i>&nbsp;{{\"Edit\"|__}}</button>'+
                                        {% endif %}
                                        {% if user.hasUserPermission('countries', 'd') %}
                                        '<a href=\"javascript:void(0);\" class=\"btn btn-danger btn-sm delete_record kt-font-light\" rel=\"'+data.id+'\" data-type=\"countries\"><i class=\"flaticon2-delete\"></i>&nbsp;{{\"Delete\"|__}}</a>'+
                                        {% endif %}
                                    '</div>';
                                {% else %}
                                    return '-';
                                {% endif %}
                        },
                    }
                ]
            {% elseif this.param.page == 'states' %}
                // datasource definition
                data: {
                    type: 'remote',
                    source: {
                        read: {
                            url: '{{url(\"api/states\")}}',
                        },
                    },
                    pageSize: 10, // display 20 records per page
                    serverPaging: true,
                    serverFiltering: true,
                    serverSorting: true,
                },
                // columns definition
                columns: [
                    {
                        field: 'id',
                        title: '#',
                        sortable: false,
                        width: 20,
                        selector: {
                            class: 'kt-checkbox--solid'
                        },
                        textAlign: 'center',
                    },
                    {
                        field: \"number\",
                        title: \"{{'ID'|__}}\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                        template: function (data) {
                            return data.id;
                        },
                    },
                    {
                        field: \"name\",
                        title: \"{{'Name'|__}}\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                    },
                    {
                        field: \"place\",
                        title: \"{{'Place'|__}}\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                    },
                    {
                        field: \"Actions\",
                        width: 'auto',
                        title: \"{{'Actions'|__}}\",
                        sortable: false,
                        autoHide: false,
                        overflow: 'visible',
                        template: function (data) {
                                {% if (user.hasUserPermission('states', 'u') or user.hasUserPermission('states', 'd')) %}
                                    return '' +
                                    '<div class=\"btn-group btn-group\" role=\"group\" aria-label=\"...\">'+
                                        {% if user.hasUserPermission('states', 'u') %}
                                        '<a href=\"{{url(\"dashboard/settings/states\")}}/'+data.id+'/edit\" class=\"btn btn-info btn-sm\"><i class=\"flaticon-edit\"></i>&nbsp;{{\"Edit\"|__}}</button>'+
                                        {% endif %}
                                        {% if user.hasUserPermission('states', 'd') %}
                                        '<a href=\"javascript:void(0);\" class=\"btn btn-danger btn-sm delete_record kt-font-light\" rel=\"'+data.id+'\" data-type=\"states\"><i class=\"flaticon2-delete\"></i>&nbsp;{{\"Delete\"|__}}</a>'+
                                        {% endif %}
                                    '</div>';
                                {% else %}
                                    return '-';
                                {% endif %}
                        },
                    }
                ]
            {% elseif this.param.page == 'cities' %}
                // datasource definition
                data: {
                    type: 'remote',
                    source: {
                        read: {
                            url: '{{url(\"api/cities\")}}',
                        },
                    },
                    pageSize: 10, // display 20 records per page
                    serverPaging: true,
                    serverFiltering: true,
                    serverSorting: true,
                },
                // columns definition
                columns: [
                    {
                        field: 'id',
                        title: '#',
                        sortable: false,
                        width: 20,
                        selector: {
                            class: 'kt-checkbox--solid'
                        },
                        textAlign: 'center',
                    },
                    {
                        field: \"number\",
                        title: \"{{'ID'|__}}\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                        template: function (data) {
                            return data.id;
                        },
                    },
                    {
                        field: \"name\",
                        title: \"{{'Name'|__}}\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                    },
                    {
                        field: \"place\",
                        title: \"{{'Place'|__}}\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                    },
                    {
                        field: \"Actions\",
                        width: 'auto',
                        title: \"{{'Actions'|__}}\",
                        sortable: false,
                        autoHide: false,
                        overflow: 'visible',
                        template: function (data) {
                                {% if (user.hasUserPermission('cities', 'u') or user.hasUserPermission('cities', 'd')) %}
                                    return '' +
                                    '<div class=\"btn-group btn-group\" role=\"group\" aria-label=\"...\">'+
                                        {% if user.hasUserPermission('cities', 'u') %}
                                        '<a href=\"{{url(\"dashboard/settings/cities\")}}/'+data.id+'/edit\" class=\"btn btn-info btn-sm\"><i class=\"flaticon-edit\"></i>&nbsp;{{\"Edit\"|__}}</button>'+
                                        {% endif %}
                                        {% if user.hasUserPermission('cities', 'd') %}
                                        '<a href=\"javascript:void(0);\" class=\"btn btn-danger btn-sm delete_record kt-font-light\" rel=\"'+data.id+'\" data-type=\"cities\"><i class=\"flaticon2-delete\"></i>&nbsp;{{\"Delete\"|__}}</a>'+
                                        {% endif %}
                                    '</div>';
                                {% else %}
                                    return '-';
                                {% endif %}
                        },
                    }
                ]
            {% elseif this.param.page == 'areas' %}
                // datasource definition
                data: {
                    type: 'remote',
                    source: {
                        read: {
                            url: '{{url(\"api/areas\")}}',
                        },
                    },
                    pageSize: 10, // display 20 records per page
                    serverPaging: true,
                    serverFiltering: true,
                    serverSorting: true,
                },
                // columns definition
                columns: [
                    {
                        field: 'id',
                        title: '#',
                        sortable: false,
                        width: 20,
                        selector: {
                            class: 'kt-checkbox--solid'
                        },
                        textAlign: 'center',
                    },
                    {
                        field: \"number\",
                        title: \"{{'ID'|__}}\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                        template: function (data) {
                            return data.id;
                        },
                    },
                    {
                        field: \"name\",
                        title: \"{{'Name'|__}}\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                    },
                    {
                        field: \"place\",
                        title: \"{{'Place'|__}}\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                    },
                    {
                        field: \"Actions\",
                        width: 'auto',
                        title: \"{{'Actions'|__}}\",
                        sortable: false,
                        autoHide: false,
                        overflow: 'visible',
                        template: function (data) {
                                {% if (user.hasUserPermission('areas', 'u') or user.hasUserPermission('areas', 'd')) %}
                                    return '' +
                                    '<div class=\"btn-group btn-group\" role=\"group\" aria-label=\"...\">'+
                                        {% if user.hasUserPermission('areas', 'u') %}
                                        '<a href=\"{{url(\"dashboard/settings/areas\")}}/'+data.id+'/edit\" class=\"btn btn-info btn-sm\"><i class=\"flaticon-edit\"></i>&nbsp;{{\"Edit\"|__}}</button>'+
                                        {% endif %}
                                        {% if user.hasUserPermission('areas', 'd') %}
                                        '<a href=\"javascript:void(0);\" class=\"btn btn-danger btn-sm delete_record kt-font-light\" rel=\"'+data.id+'\" data-type=\"areas\"><i class=\"flaticon2-delete\"></i>&nbsp;{{\"Delete\"|__}}</a>'+
                                        {% endif %}
                                    '</div>';
                                {% else %}
                                    return '-';
                                {% endif %}
                        },
                    }
                ]
            {% elseif this.param.page == 'fees' %}
                // datasource definition
                data: {
                    type: 'remote',
                    source: {
                        read: {
                            url: '{{url(\"api/fees\")}}',
                        },
                    },
                    pageSize: 10, // display 20 records per page
                    serverPaging: true,
                    serverFiltering: true,
                    serverSorting: true,
                },
                // columns definition
                columns: [
                    {
                        field: 'id',
                        title: '#',
                        sortable: false,
                        width: 20,
                        selector: {
                            class: 'kt-checkbox--solid'
                        },
                        textAlign: 'center',
                    },
                    {
                        field: \"from\",
                        title: \"{{'From'|__}}\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                    },
                    {
                        field: \"to\",
                        title: \"{{'To'|__}}\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                    },
                    {
                        field: \"Actions\",
                        width: 'auto',
                        title: \"{{'Actions'|__}}\",
                        sortable: false,
                        autoHide: false,
                        overflow: 'visible',
                        template: function (data) {
                                {% if (user.hasUserPermission('fees', 'u') or user.hasUserPermission('fees', 'd')) %}
                                    return '' +
                                    '<div class=\"btn-group btn-group\" role=\"group\" aria-label=\"...\">'+
                                        {% if user.hasUserPermission('fees', 'u') %}
                                        '<a href=\"{{url(\"dashboard/settings/fees\")}}/'+data.id+'/edit\" class=\"btn btn-info btn-sm\"><i class=\"flaticon-edit\"></i>&nbsp;{{\"Edit\"|__}}</button>'+
                                        {% endif %}
                                        {% if user.hasUserPermission('fees', 'd') %}
                                        '<a href=\"javascript:void(0);\" class=\"btn btn-danger btn-sm delete_record kt-font-light\" rel=\"'+data.id+'\" data-type=\"fees\"><i class=\"flaticon2-delete\"></i>&nbsp;{{\"Delete\"|__}}</a>'+
                                        {% endif %}
                                    '</div>';
                                {% else %}
                                    return '-';
                                {% endif %}
                        },
                    }
                ]
            {% elseif this.param.page == 'employees' %}
                // datasource definition
                data: {
                    type: 'remote',
                    source: {
                        read: {
                            url: '{{url(\"api/employees\")}}',
                        },
                    },
                    pageSize: 10, // display 20 records per page
                    serverPaging: true,
                    serverFiltering: true,
                    serverSorting: true,
                },
                // columns definition
                columns: [
                    {
                        field: 'id',
                        title: '#',
                        sortable: false,
                        width: 20,
                        selector: {
                            class: 'kt-checkbox--solid'
                        },
                        textAlign: 'center',
                    },
                    {
                        field: \"name\",
                        title: \"{{'Name'|__}}\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                    },
                    {
                        field: \"role\",
                        title: \"{{'Role'|__}}\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                    },
                    {
                        field: \"groups\",
                        title: \"{{'Departments'|__}}\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                        template: function (data) {
                            if(data.groups){
                                var i;
                                var text = '-';
                                for (i = 0; i < data.groups.length; i++) {
                                    if(text == '-'){
                                        text = data.groups[i];
                                    }else{
                                        if(i < data.groups.length){
                                            text += ', ';
                                        }
                                        text += data.groups[i];
                                    }
                                }
                                return text;
                            }else{
                                return '-';
                            }
                        },
                    },
                    {
                        field: \"Actions\",
                        width: 'auto',
                        title: \"{{'Actions'|__}}\",
                        sortable: false,
                        autoHide: false,
                        overflow: 'visible',
                        template: function (data) {
                                {% if (user.hasUserPermission('employees', 'u') or user.hasUserPermission('employees', 'd')) %}
                                    return '' +
                                    '<div class=\"btn-group btn-group\" role=\"group\" aria-label=\"...\">'+
                                        {% if user.hasUserPermission('employees', 'u') %}
                                        '<a href=\"{{url(\"dashboard/settings/employees\")}}/'+data.id+'/edit\" class=\"btn btn-info btn-sm\"><i class=\"flaticon-edit\"></i>&nbsp;{{\"Edit\"|__}}</button>'+
                                        {% endif %}
                                        {% if user.hasUserPermission('employees', 'd') %}
                                        '<a href=\"javascript:void(0);\" class=\"btn btn-danger btn-sm delete_record kt-font-light\" rel=\"'+data.id+'\" data-type=\"employees\"><i class=\"flaticon2-delete\"></i>&nbsp;{{\"Delete\"|__}}</a>'+
                                        {% endif %}
                                    '</div>';
                                {% else %}
                                    return '-';
                                {% endif %}
                        },
                    }
                ]
            {% elseif this.param.page == 'backup' %}
                // datasource definition
                data: {
                    type: 'remote',
                    source: {
                        read: {
                            url: '{{url(\"api/backups\")}}',
                        },
                    },
                    pageSize: 10, // display 20 records per page
                    serverPaging: true,
                    serverFiltering: true,
                    serverSorting: true,
                },
                // columns definition
                columns: [
                    {
                        field: \"fileInfo\",
                        title: \"{{'Name'|__}}\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                        template: function (data) {
                            return '<a href=\"{{\"app/uploads/panakour-backup\"|media|replace({\"app/media/\": \"\"})}}/' + data.fileInfo.basename + '\" download>' + data.fileInfo.basename + '</a>';
                        },
                    },
                    {
                        field: \"size\",
                        title: \"{{'Size'|__}}\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                        template: function (data) {
                            return data.size + ' {{\"KB\"|__}}';
                        },
                    },
                    {
                        field: \"lastModified\",
                        title: \"{{'Created Date'|__}}\",
                        autoHide: false,
                        sortable: false,
                        width: 'auto',
                    },
                    {
                        field: \"Actions\",
                        width: 'auto',
                        title: \"{{'Actions'|__}}\",
                        sortable: false,
                        autoHide: false,
                        overflow: 'visible',
                        template: function (data) {
                                {% if (user.hasUserPermission('backups', 'd')) %}
                                    return '' +
                                    '<div class=\"btn-group btn-group\" role=\"group\" aria-label=\"...\">'+
                                        {% if user.hasUserPermission('backups', 'd') %}
                                        '<a href=\"javascript:void(0);\" class=\"btn btn-danger btn-sm delete_record kt-font-light\" rel=\"'+data.fileInfo.basename+'\" data-type=\"backup\"><i class=\"flaticon2-delete\"></i>&nbsp;{{\"Delete\"|__}}</a>'+
                                        {% endif %}
                                    '</div>';
                                {% else %}
                                    return '-';
                                {% endif %}
                        },
                    }
                ]
            {% endif %}
        });
    };

    // search
    var search = function () {
        \$('#filter_form select,#filter_form input').each(function(){
            \$(this).on('change', function () {
                datatable.search(\$(this).val().toLowerCase(), \$(this).attr('name'));
            });
        });
        \$('#reset').on('click', function () {
            datatable.destroy();
            \$('#filter_form select,#filter_form input').each(function(){
                \$(this).val('');
            });
            \$('#filter_form select').each(function(){
                \$(this).selectpicker(\"refresh\");
            });
            init();
        });
    };

    // selection
    var selection = function () {
        // init form controls
        //\$('#kt_form_status, #kt_form_type').selectpicker();

        // event handler on check and uncheck on records
        datatable.on('kt-datatable--on-check kt-datatable--on-uncheck kt-datatable--on-layout-updated', function (e) {
            var checkedNodes = datatable.rows('.kt-datatable__row--active').nodes(); // get selected records
            var count = checkedNodes.length; // selected records count

            \$('#kt_subheader_group_selected_rows').html(count);

            if (count > 0) {
                \$('#kt_subheader_search').addClass('kt-hidden');
                \$('#kt_subheader_group_actions').removeClass('kt-hidden');
            } else {
                \$('#kt_subheader_search').removeClass('kt-hidden');
                \$('#kt_subheader_group_actions').addClass('kt-hidden');
            }
        });
    }

    // selected records status update
    var selectedStatusUpdate = function () {
        \$('#kt_subheader_group_actions_status_change').on('click', \"[data-toggle='status-change']\", function () {
            var status = \$(this).find(\".kt-nav__link-text\").html();

            // fetch selected IDs
            var ids = datatable.rows('.kt-datatable__row--active').nodes().find('.kt-checkbox--single > [type=\"checkbox\"]').map(function (i, chk) {
                return \$(chk).val();
            });

            if (ids.length > 0) {
                // learn more: //sweetalert2.github.io/
                swal.fire({
                    buttonsStyling: false,

                    html: \"{{\"Are you sure to update\"|__}} \" + ids.length + \" {{\"selected records status to\"|__}} \" + status + \" ?\",
                    type: \"info\",

                    confirmButtonText: \"{{\"Yes, update\"|__}}!\",
                    confirmButtonClass: \"btn btn-sm btn-bold btn-brand\",

                    showCancelButton: true,
                    cancelButtonText: \"{{\"No, cancel\"|__}}\",
                    cancelButtonClass: \"btn btn-sm btn-bold btn-default\"
                }).then(function (result) {
                    if (result.value) {
                        swal.fire({
                            title: '{{\"Deleted\"|__}}!',
                            text: '{{\"Your selected records statuses have been updated\"|__}}!',
                            type: 'success',
                            buttonsStyling: false,
                            confirmButtonText: \"{{\"OK\"|__}}\",
                            confirmButtonClass: \"btn btn-sm btn-bold btn-brand\",
                        })
                        // result.dismiss can be 'cancel', 'overlay',
                        // 'close', and 'timer'
                    } else if (result.dismiss === 'cancel') {
                        swal.fire({
                            title: '{{\"Cancelled\"|__}}',
                            text: '{{\"You selected records statuses have not been updated\"|__}}!',
                            type: 'error',
                            buttonsStyling: false,
                            confirmButtonText: \"{{\"OK\"|__}}\",
                            confirmButtonClass: \"btn btn-sm btn-bold btn-brand\",
                        });
                    }
                });
            }
        });
    }

    // selected records delete
    var selectedDelete = function () {
        \$('#kt_subheader_group_actions_delete_all').on('click', function () {
            // fetch selected IDs
            var selected = [];
            var type    = \$('.delete_record').attr('data-type');
            var ids = datatable.rows('.kt-datatable__row--active').nodes().find('.kt-checkbox--single > [type=\"checkbox\"]').map(function (i, chk) {
                selected[\$(chk).val()] = \$(chk).val();
                return \$(chk).val();
            });

            if (ids.length > 0) {
                // learn more: //sweetalert2.github.io/
                swal.fire({
                    buttonsStyling: false,

                    text: \"{{'Are you sure to delete'|__}} \" + ids.length + \" {{'selected records ?'|__}}\",
                    type: \"danger\",

                    confirmButtonText: \"{{'Yes, delete!'|__}}\",
                    confirmButtonClass: \"btn btn-sm btn-bold btn-danger\",

                    showCancelButton: true,
                    cancelButtonText: '{{\"No, cancel\"|__}}',
                    cancelButtonClass: \"btn btn-sm btn-bold btn-brand\"
                }).then(function (result) {
                    if (result.value) {
                        \$.request('onDelete', {
                            data: {id: selected,type: type},
                            success: function(data) {
                                swal.fire({
                                    title: '{{\"Deleted!\"|__}}',
                                    text: '{{\"Your selected records have been deleted! :(\"|__}}',
                                    type: 'success',
                                    buttonsStyling: false,
                                    confirmButtonText: '{{\"OK\"|__}}',
                                    confirmButtonClass: \"btn btn-sm btn-bold btn-brand\",
                                });
                                datatable.reload();
                            }
                        });
                        // result.dismiss can be 'cancel', 'overlay',
                        // 'close', and 'timer'
                    } else if (result.dismiss === 'cancel') {
                        swal.fire({
                            title: '{{\"Cancelled\"|__}}',
                            text: '{{\"You selected records have not been deleted! :)\"|__}}',
                            type: 'error',
                            buttonsStyling: false,
                            confirmButtonText: '{{\"OK\"|__}}',
                            confirmButtonClass: \"btn btn-sm btn-bold btn-brand\",
                        });
                    }
                });
            }
        });


        \$('body').on('click','.delete_record',function(){
            var id      = \$(this).attr('rel');
            var type    = \$(this).attr('data-type');
            swal.fire({
                buttonsStyling: false,

                text: \"{{'Are you sure to delete this item ?'|__}}\",
                type: \"danger\",

                confirmButtonText: \"{{'Yes, delete!'|__}}\",
                confirmButtonClass: \"btn btn-sm btn-bold btn-danger\",

                showCancelButton: true,
                cancelButtonText: '{{\"No, cancel\"|__}}',
                cancelButtonClass: \"btn btn-sm btn-bold btn-brand\"
            }).then(function (result) {
                if (result.value) {
                    \$.request('onDelete', {
                        data: {id: id, type: type},
                        success: function(data) {

                            swal.fire({
                                title: '{{\"Deleted!\"|__}}',
                                text: '{{\"Your selected record has been deleted! :(\"|__}}',
                                type: 'success',
                                buttonsStyling: false,
                                confirmButtonText: '{{\"OK\"|__}}',
                                confirmButtonClass: \"btn btn-sm btn-bold btn-brand\",
                            });
                            datatable.reload();
                        }
                    });
                    // result.dismiss can be 'cancel', 'overlay',
                    // 'close', and 'timer'
                } else if (result.dismiss === 'cancel') {
                    swal.fire({
                        title: '{{\"Cancelled\"|__}}',
                        text: '{{\"You selected record has not been deleted! :)\"|__}}',
                        type: 'error',
                        buttonsStyling: false,
                        confirmButtonText: '{{\"OK\"|__}}',
                        confirmButtonClass: \"btn btn-sm btn-bold btn-brand\",
                    });
                }
            });
        });
    }

    var updateTotal = function () {
        datatable.on('kt-datatable--on-layout-updated', function () {
            \$('#kt_subheader_total').html(datatable.getTotalRows() + ' {{\"Total\"|__}}');
        });
    };

    var reload = function () {
        datatable.reload();
    };

    return {
        // public functions
        init: function () {
            init();
            search();
            selection();
            selectedStatusUpdate();
            selectedDelete();
            updateTotal();
        },

        reload: function(){
            reload();
        }
    };
}();
var KTDatatablesExtensions = function() {

\tvar initTable1 = function() {
\t\tvar table = \$('#kt_table_1');

        {% if this.param.page == 'translate' %}
    \t\t// begin first table
    \t\ttable.DataTable({
    \t\t\tresponsive: true,
                dom: \"<'row'<'col-md-6' f><'col-md-6 text-right'>>\\n\\t\\t\\t<'row'<'col-md-12'tr>>\\n\\t\\t\\t<'row'<'col-sm-12 col-md-5'i><'col-sm-12 col-md-7 dataTables_pager'>>\",
                language: {
                    lengthMenu:     \"{{'Display'|__}} _MENU_\",
                    emptyTable:     \"{{'No data available in table'|__}}\",
                    info:           \"{{'Showing'|__}} _START_ {{'to'|__}} _END_ {{'of'|__}} _TOTAL_ {{'entries'|__}}\",
                    infoEmpty:      \"{{'Showing'|__}} 0 {{'to'|__}} 0 {{'of'|__}} 0 {{'entries'|__}}\",
                    loadingRecords: \"{{'Loading'|__}}...\",
                    processing:     \"{{'Processing'|__}}...\",
                    search:         \"{{'Search'|__}}\",
                    infoFiltered:   \"({{'filtered from'|__}} _MAX_ {{'total entries'|__}})\",
                },
                ajax: {
                    url: '{{url(\"api/translatemessages\")}}',
                    type: \"POST\",
                },
    \t\t\tdeferRender: true,
    \t\t\tscrollY: '500px',
    \t\t\tscrollCollapse: true,
    \t\t\tscroller: true,
    \t\t\tcolumns: [
        \t\t\t{% for lang in languages %}
        \t\t\t\t{data: '{{lang.name}}'},
        \t\t\t{% endfor %}
    \t\t\t],
    \t\t});
        {% elseif this.param.page == 'backup' %}
            table.DataTable({
    \t\t\tresponsive: true,
                dom: \"<'row'<'col-md-6'><'col-md-6 text-right'>>\\n\\t\\t\\t<'row'<'col-md-12'tr>>\\n\\t\\t\\t<'row'<'col-sm-12 col-md-5'i><'col-sm-12 col-md-7 dataTables_pager'lp>>\",
                buttons: [
                    {extend: 'copy',exportOptions: {columns: [2,3,4,5]}},
                    {extend: 'excel',exportOptions: {columns: [2,3,4,5]}},
                    {extend: 'pdf',exportOptions: {columns: [2,3,4,5]}},
                    {extend: 'print',exportOptions: {columns: [2,3,4,5]}
                }],
                lengthMenu: [5, 10, 25, 50],
                pageLength: 10,
                language: {
                    lengthMenu: \"{{'Display'|__}} _MENU_\",
                    emptyTable:     \"{{'No data available in table'|__}}\",
                    info:           \"{{'Showing'|__}} _START_ {{'to'|__}} _END_ {{'of'|__}} _TOTAL_ {{'entries'|__}}\",
                    infoEmpty:      \"{{'Showing'|__}} 0 {{'to'|__}} 0 {{'of'|__}} 0 {{'entries'|__}}\",
                    loadingRecords: \"{{'Loading'|__}}...\",
                    processing:     \"{{'Processing'|__}}...\",
                    search:         \"{{'Search'|__}}\",
                    infoFiltered:   \"({{'filtered from'|__}} _MAX_ {{'total entries'|__}})\",
                },
                searchDelay: 500,
                processing: true,
                serverSide: true,
                ajax: {
                    url: '{{url(\"api/backups\")}}',
                    type: \"POST\",
                },
                columns: [
                {
                    data: \"fileInfo\",
                    'orderable':false,
                    'render': function (data, type, full, meta){
                        return '<a href=\"{{\"app/uploads/panakour-backup\"|media|replace({\"app/media/\": \"\"})}}/' + full.fileInfo.basename + '\" download>' + full.fileInfo.basename + '</a>';
                    }
                },
                {
                    data: \"size\",
                    'orderable':false,
                    'render': function (data, type, full, meta){
                        return full.size + ' {{\"KB\"|__}}';
                    }
                },
                {
                    data: \"lastModified\",
                    'orderable':true
                },
                {
                    data: \"actions\",
                    'orderable':false
                }],
                columnDefs: [{
                   'targets': -1,
                   'searchable':false,
                   'orderable':false,
                   'className': 'dt-body-center',
                   'render': function (data, type, full, meta){
                        return '<div class=\"btn-group m-btn-group\" role=\"group\" aria-label=\"...\"><button class=\"btn btn-danger delete_record\" rel=\"' + full.fileInfo.basename + '\" data-type=\"backup\" ><span><i class=\"la la-times\"></i> <span>{{\"Delete\"|__}}</span></span></button></div>';
                    }
                }]
            });
        {% endif %}





\t};

\treturn {

\t\t//main function to initiate the module
\t\tinit: function() {
\t\t\tinitTable1();
\t\t},

\t};

}();

// Class definition
var KTUserProfile = function () {
\t// Base elements
\tvar avatar;
\tvar offcanvas;

\t// Private functions
\tvar initAside = function () {
\t\t// Mobile offcanvas for mobile mode
\t\toffcanvas = new KTOffcanvas('kt_user_profile_aside', {
            overlay: true,
            baseClass: 'kt-app__aside',
            closeBy: 'kt_user_profile_aside_close',
            toggleBy: 'kt_subheader_mobile_toggle'
        });
        \$('#kt_subheader_mobile_toggle').show();
\t}

\tvar initUserForm = function() {
\t\tavatar = new KTAvatar('kt_user_avatar');
\t}

\treturn {
\t\t// public functions
\t\tinit: function() {
\t\t\tinitAside();
\t\t\tinitUserForm();
\t\t}
\t};
}();

KTUtil.ready(function() {
\tKTUserProfile.init();

    \$( \"#kt_form\" ).validate({
        ignore: \":hidden\",
        invalidHandler: function(event, validator) {
            var alert = \$('#kt-form_msg');
            alert.removeClass('kt-hidden').show();
            KTUtil.scrollTop();
        },
    });

    {% if this.param.page == 'general' or this.param.page is empty %}
        \$('body').on('changed.bs.select', '#currency', function(e, clickedIndex, newValue, oldValue){
            var selected = \$(e.currentTarget).val();
            if(selected != ''){
                \$.request('onGetCurrency', {
                    data: {id: selected},
                    success: function(data) {
                        if(data.currency.place_symbol_before == true){
                            \$('#place_symbol_before').prop('checked', true);
                        }else {
                            \$('#place_symbol_before').prop('checked', false);
                        }
                        if(data.currency.with_space == true){
                            \$('#with_space').prop('checked', true);
                        }else {
                            \$('#with_space').prop('checked', false);
                        }
                        \$('#decimal_point').val(data.currency.decimal_point);
                        \$('#thousand_separator').val(data.currency.thousand_separator);
                        \$('#initbiz_money_fraction_digits').val(data.currency.initbiz_money_fraction_digits);
                    }
                });
            }
        });
    {% elseif this.param.page == 'company' %}
        \$(\"#address\").geocomplete({
            map: \"#map_canvas\",
            mapOptions: {
                zoom: 18
            },
            markerOptions: {
                draggable: true
            },
            details: \".location-complete\",
            {% if company.lat %}
                location: [{{company.lat}},{{company.lng}}]
            {% endif %}
        });
        \$(\"#address\").bind(\"geocode:dragged\", function(event, latLng){
            \$(\"input[name=lat]\").val(latLng.lat());
            \$(\"input[name=lng]\").val(latLng.lng());
            \$(\"#reset\").show();
        });

        var input = document.getElementById('kt_tagify_2');
        new Tagify(input);
    {% elseif this.param.page == 'languages' or this.param.page == 'departments' or this.param.page == 'employees' or this.param.page == 'currencies' or this.param.page == 'packaging' %}
        KTAppUserListDatatable.init();
    {% elseif this.param.page == 'sms' %}
        \$('body').on('click', '#enable_sms_notification', function(){
            \$('#sms_notification').addClass('kt-hidden');
            if(\$(this).is(':checked')){
                \$('#sms_notification').removeClass('kt-hidden');
            }
        });
        \$('body').on('changed.bs.select', '.gateway', function(e, clickedIndex, newValue, oldValue){
            var selected = \$(e.currentTarget).val();
            if(selected != ''){
                if(selected == 'clickatell'){
                    \$('.clickatell').removeClass('kt-hidden');
                }else{
                    \$('.clickatell').addClass('kt-hidden');
                }
            }
        });
    {% elseif this.param.page == 'notifications' %}
        \$('body').on('changed.bs.select', '.provider', function(e, clickedIndex, newValue, oldValue){
            var selected = \$(e.currentTarget).val();
            if(selected != ''){
                if(selected == 'pusher'){
                    \$('.pusher').removeClass('kt-hidden');
                }else{
                    \$('.pusher').addClass('kt-hidden');
                }
            }
        });
        \$('body').on('click', '#enable_live_notification', function(){
            \$('#live_notification').addClass('kt-hidden');
            if(\$(this).is(':checked')){
                \$('#live_notification').removeClass('kt-hidden');
            }
        });
        \$('body').on('click', '.select_departments', function(){
            \$('.show_departments').addClass('kt-hidden');
            if(\$(this).is(':checked')){
                \$('.show_departments').removeClass('kt-hidden');
            }
        });
        \$('body').on('click', '.select_employees', function(){
            \$('.show_employees').addClass('kt-hidden');
            if(\$(this).is(':checked')){
                \$('.show_employees').removeClass('kt-hidden');
            }
        });
    {% elseif this.param.page == 'backup' %}
        KTAppUserListDatatable.init();
        \$('body').on('click', '#database', function(e){
            swal.fire({
                title: '{{\"Error\"|__}}',
                text: '{{\"This feature is not allowed in demo\"|__}}',
                type: 'error',
                buttonsStyling: false,
                confirmButtonText: '{{\"OK\"|__}}',
                confirmButtonClass: \"btn btn-sm btn-bold btn-brand\",
            });
        });
        \$('body').on('click', '#files', function(e){
            swal.fire({
                title: '{{\"Error\"|__}}',
                text: '{{\"This feature is not allowed in demo\"|__}}',
                type: 'error',
                buttonsStyling: false,
                confirmButtonText: '{{\"OK\"|__}}',
                confirmButtonClass: \"btn btn-sm btn-bold btn-brand\",
            });
        });
        \$('body').on('click', '#whole', function(e){
            swal.fire({
                title: '{{\"Error\"|__}}',
                text: '{{\"This feature is not allowed in demo\"|__}}',
                type: 'error',
                buttonsStyling: false,
                confirmButtonText: '{{\"OK\"|__}}',
                confirmButtonClass: \"btn btn-sm btn-bold btn-brand\",
            });
        });
        window.onbeforeunload = function() {
              return \"Did you save your stuff?\"
        }
    {% elseif this.param.page == 'fees' %}
        \$('.bootstrap-touchspin-vertical-btn').TouchSpin({
            buttondown_class: 'btn btn-secondary',
            buttonup_class: 'btn btn-secondary',
            verticalbuttons: true,
            verticalup: '<i class=\"la la-plus\"></i>',
            verticaldown: '<i class=\"la la-minus\"></i>'
        });
        KTAppUserListDatatable.init();
    {% elseif this.param.page == 'translate' %}
        // Activate an inline edit on click of a table cell
        \$('#kt_table_1').on( 'click', 'tbody td .translate', function (e) {
            if(\$(this).find('.inline_edit').length == 0){
                \$(this).html('<input type=\"text\" class=\"form-control inline_edit\" value=\"'+\$(this).html()+'\" />');
                \$('.inline_edit').focus().select();
            }
        });
        \$('#kt_table_1').on('change', '.inline_edit', function(e){
            var element = \$(this);
            var label = element.parent('.translate');
            label.addClass('kt-spinner kt-spinner--right kt-spinner--sm kt-spinner--success');
            var id = label.attr('rel');
            var lang = label.attr('data-language');
             \$.request('onTranslate', {
                 data: {translate: \$(this).val(), lang: lang, id: id},
                 success: function(response, status, xhr, \$form) {
                     label.removeClass('kt-spinner kt-spinner--right kt-spinner--sm kt-spinner--success');
                     element.replaceWith(element.val());
                 }
             });
        });
        \$('#kt_table_1').on('blur', '.inline_edit', function(e){
            var element = \$(this);
            element.replaceWith(element.val());
        });
    \tKTDatatablesExtensions.init();
    {% elseif this.param.page == 'statuses' or this.param.page == 'treasury'  or this.param.page == 'categories' or this.param.page == 'couriers' or this.param.page == 'deliverytimes' or this.param.page == 'shipping' or this.param.page == 'branches' or this.param.page == 'cars' %}
        KTAppUserListDatatable.init();
    {% elseif this.param.page == 'areas' or this.param.page == 'cities' or this.param.page == 'states' or this.param.page == 'countries' %}
        KTAppUserListDatatable.init();
    {% endif %}
});
</script>
{% endput %}", "/Applications/MAMP/htdocs/wellwell/themes/spotlayer/pages/dashboard/settings.htm", "");
    }
}
