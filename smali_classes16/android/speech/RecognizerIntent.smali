.class public Landroid/speech/RecognizerIntent;
.super Ljava/lang/Object;
.source "RecognizerIntent.java"


# static fields
.field public static final ACTION_GET_LANGUAGE_DETAILS:Ljava/lang/String; = "android.speech.action.GET_LANGUAGE_DETAILS"

.field public static final ACTION_RECOGNIZE_SPEECH:Ljava/lang/String; = "android.speech.action.RECOGNIZE_SPEECH"

.field public static final ACTION_VOICE_SEARCH_HANDS_FREE:Ljava/lang/String; = "android.speech.action.VOICE_SEARCH_HANDS_FREE"

.field public static final ACTION_WEB_SEARCH:Ljava/lang/String; = "android.speech.action.WEB_SEARCH"

.field public static final DETAILS_META_DATA:Ljava/lang/String; = "android.speech.DETAILS"

.field public static final EXTRA_CALLING_PACKAGE:Ljava/lang/String; = "calling_package"

.field public static final EXTRA_CONFIDENCE_SCORES:Ljava/lang/String; = "android.speech.extra.CONFIDENCE_SCORES"

.field public static final EXTRA_LANGUAGE:Ljava/lang/String; = "android.speech.extra.LANGUAGE"

.field public static final EXTRA_LANGUAGE_MODEL:Ljava/lang/String; = "android.speech.extra.LANGUAGE_MODEL"

.field public static final EXTRA_LANGUAGE_PREFERENCE:Ljava/lang/String; = "android.speech.extra.LANGUAGE_PREFERENCE"

.field public static final EXTRA_MAX_RESULTS:Ljava/lang/String; = "android.speech.extra.MAX_RESULTS"

.field public static final EXTRA_ONLY_RETURN_LANGUAGE_PREFERENCE:Ljava/lang/String; = "android.speech.extra.ONLY_RETURN_LANGUAGE_PREFERENCE"

.field public static final EXTRA_ORIGIN:Ljava/lang/String; = "android.speech.extra.ORIGIN"

.field public static final EXTRA_PARTIAL_RESULTS:Ljava/lang/String; = "android.speech.extra.PARTIAL_RESULTS"

.field public static final EXTRA_PREFER_OFFLINE:Ljava/lang/String; = "android.speech.extra.PREFER_OFFLINE"

.field public static final EXTRA_PROMPT:Ljava/lang/String; = "android.speech.extra.PROMPT"

.field public static final EXTRA_RESULTS:Ljava/lang/String; = "android.speech.extra.RESULTS"

.field public static final EXTRA_RESULTS_PENDINGINTENT:Ljava/lang/String; = "android.speech.extra.RESULTS_PENDINGINTENT"

.field public static final EXTRA_RESULTS_PENDINGINTENT_BUNDLE:Ljava/lang/String; = "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE"

.field public static final EXTRA_SECURE:Ljava/lang/String; = "android.speech.extras.EXTRA_SECURE"

.field public static final EXTRA_SPEECH_INPUT_COMPLETE_SILENCE_LENGTH_MILLIS:Ljava/lang/String; = "android.speech.extras.SPEECH_INPUT_COMPLETE_SILENCE_LENGTH_MILLIS"

.field public static final EXTRA_SPEECH_INPUT_MINIMUM_LENGTH_MILLIS:Ljava/lang/String; = "android.speech.extras.SPEECH_INPUT_MINIMUM_LENGTH_MILLIS"

.field public static final EXTRA_SPEECH_INPUT_POSSIBLY_COMPLETE_SILENCE_LENGTH_MILLIS:Ljava/lang/String; = "android.speech.extras.SPEECH_INPUT_POSSIBLY_COMPLETE_SILENCE_LENGTH_MILLIS"

.field public static final EXTRA_SUPPORTED_LANGUAGES:Ljava/lang/String; = "android.speech.extra.SUPPORTED_LANGUAGES"

.field public static final EXTRA_WEB_SEARCH_ONLY:Ljava/lang/String; = "android.speech.extra.WEB_SEARCH_ONLY"

.field public static final LANGUAGE_MODEL_FREE_FORM:Ljava/lang/String; = "free_form"

.field public static final LANGUAGE_MODEL_WEB_SEARCH:Ljava/lang/String; = "web_search"

.field public static final RESULT_AUDIO_ERROR:I = 0x5

.field public static final RESULT_CLIENT_ERROR:I = 0x2

.field public static final RESULT_NETWORK_ERROR:I = 0x4

.field public static final RESULT_NO_MATCH:I = 0x1

.field public static final RESULT_SERVER_ERROR:I = 0x3


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getVoiceDetailsIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 7

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.WEB_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_40

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_40

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v3, :cond_1f

    goto :goto_40

    :cond_1f
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "android.speech.DETAILS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2c

    return-object v2

    :cond_2c
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.speech.action.GET_LANGUAGE_DETAILS"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v2

    :cond_40
    :goto_40
    return-object v2
.end method
