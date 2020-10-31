.class public final Landroid/view/textclassifier/ExtrasUtils;
.super Ljava/lang/Object;
.source "ExtrasUtils.java"


# static fields
.field private static final ACTIONS_INTENTS:Ljava/lang/String; = "actions-intents"

.field private static final ACTION_INTENT:Ljava/lang/String; = "action-intent"

.field private static final ENTITY_TYPE:Ljava/lang/String; = "entity-type"

.field private static final FOREIGN_LANGUAGE:Ljava/lang/String; = "foreign-language"

.field private static final MODEL_NAME:Ljava/lang/String; = "model-name"

.field private static final SCORE:Ljava/lang/String; = "score"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findAction(Landroid/view/textclassifier/TextClassification;Ljava/lang/String;)Landroid/app/RemoteAction;
    .registers 8

    const/4 v0, 0x0

    if-eqz p0, :cond_34

    if-nez p1, :cond_6

    goto :goto_34

    :cond_6
    invoke-static {p0}, Landroid/view/textclassifier/ExtrasUtils;->getActionsIntents(Landroid/view/textclassifier/TextClassification;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_33

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v2, :cond_33

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    if-eqz v4, :cond_30

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/RemoteAction;

    return-object v0

    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_33
    return-object v0

    :cond_34
    :goto_34
    return-object v0
.end method

.method public static findTranslateAction(Landroid/view/textclassifier/TextClassification;)Landroid/app/RemoteAction;
    .registers 2

    const-string v0, "android.intent.action.TRANSLATE"

    invoke-static {p0, v0}, Landroid/view/textclassifier/ExtrasUtils;->findAction(Landroid/view/textclassifier/TextClassification;Ljava/lang/String;)Landroid/app/RemoteAction;

    move-result-object v0

    return-object v0
.end method

.method public static getActionIntent(Landroid/os/Bundle;)Landroid/content/Intent;
    .registers 2

    const-string v0, "action-intent"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method public static getActionsIntents(Landroid/view/textclassifier/TextClassification;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/textclassifier/TextClassification;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassification;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "actions-intents"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getEntityType(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "entity-type"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getForeignLanguageExtra(Landroid/view/textclassifier/TextClassification;)Landroid/os/Bundle;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassification;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "foreign-language"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static getModelName(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string/jumbo v0, "model-name"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getScore(Landroid/os/Bundle;)F
    .registers 4

    const/4 v0, -0x1

    const/high16 v1, -0x40800000    # -1.0f

    if-nez p0, :cond_6

    return v1

    :cond_6
    const-string/jumbo v2, "score"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method
