.class public Lcom/android/internal/phrase/Phrases$Utils;
.super Ljava/lang/Object;
.source "Phrases.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/phrase/Phrases;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Utils"
.end annotation


# static fields
.field private static EXTRA_PHRASE_LIST:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "phrase_list"

    sput-object v0, Lcom/android/internal/phrase/Phrases$Utils;->EXTRA_PHRASE_LIST:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAddPhraseIntent()Landroid/content/Intent;
    .registers 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    # getter for: Lcom/android/internal/phrase/Phrases;->PHRASE_PACKAGE_NAME:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/phrase/Phrases;->access$000()Ljava/lang/String;

    move-result-object v1

    # getter for: Lcom/android/internal/phrase/Phrases;->PHRASE_ADD_ACTIVITY_NAME:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/phrase/Phrases;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getPhraseEditIntent()Landroid/content/Intent;
    .registers 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    # getter for: Lcom/android/internal/phrase/Phrases;->PHRASE_PACKAGE_NAME:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/phrase/Phrases;->access$000()Ljava/lang/String;

    move-result-object v1

    # getter for: Lcom/android/internal/phrase/Phrases;->PHRASE_EDIT_ACTIVITY_NAME:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/phrase/Phrases;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static isAddPhraseActivity(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2b

    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_2b

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    # getter for: Lcom/android/internal/phrase/Phrases;->PHRASE_PACKAGE_NAME:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/phrase/Phrases;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    # getter for: Lcom/android/internal/phrase/Phrases;->PHRASE_ADD_ACTIVITY_NAME:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/phrase/Phrases;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_29

    const/4 v0, 0x1

    goto :goto_2a

    :cond_29
    nop

    :goto_2a
    return v0

    :cond_2b
    return v0
.end method

.method public static startAddPhraseActivity(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/android/internal/phrase/Phrases$Utils;->getAddPhraseIntent()Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    sget-object v1, Lcom/android/internal/phrase/Phrases$Utils;->EXTRA_PHRASE_LIST:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_14
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
