.class public interface abstract Landroid/view/textclassifier/TextClassifier;
.super Ljava/lang/Object;
.source "TextClassifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextClassifier$Utils;,
        Landroid/view/textclassifier/TextClassifier$EntityConfig;,
        Landroid/view/textclassifier/TextClassifier$WidgetType;,
        Landroid/view/textclassifier/TextClassifier$Hints;,
        Landroid/view/textclassifier/TextClassifier$EntityType;,
        Landroid/view/textclassifier/TextClassifier$TextClassifierType;
    }
.end annotation


# static fields
.field public static final DEFAULT_SYSTEM:I = 0x2

.field public static final EXTRA_FROM_TEXT_CLASSIFIER:Ljava/lang/String; = "android.view.textclassifier.extra.FROM_TEXT_CLASSIFIER"

.field public static final HINT_TEXT_IS_EDITABLE:Ljava/lang/String; = "android.text_is_editable"

.field public static final HINT_TEXT_IS_NOT_EDITABLE:Ljava/lang/String; = "android.text_is_not_editable"

.field public static final LOCAL:I = 0x0

.field public static final LOG_TAG:Ljava/lang/String; = "androidtc"

.field public static final NO_OP:Landroid/view/textclassifier/TextClassifier;

.field public static final SYSTEM:I = 0x1

.field public static final TYPE_ADDRESS:Ljava/lang/String; = "address"

.field public static final TYPE_DATE:Ljava/lang/String; = "date"

.field public static final TYPE_DATE_TIME:Ljava/lang/String; = "datetime"

.field public static final TYPE_DICTIONARY:Ljava/lang/String; = "dictionary"

.field public static final TYPE_EMAIL:Ljava/lang/String; = "email"

.field public static final TYPE_FLIGHT_NUMBER:Ljava/lang/String; = "flight"

.field public static final TYPE_OTHER:Ljava/lang/String; = "other"

.field public static final TYPE_PHONE:Ljava/lang/String; = "phone"

.field public static final TYPE_UNKNOWN:Ljava/lang/String; = ""

.field public static final TYPE_URL:Ljava/lang/String; = "url"

.field public static final WIDGET_TYPE_CUSTOM_EDITTEXT:Ljava/lang/String; = "customedit"

.field public static final WIDGET_TYPE_CUSTOM_TEXTVIEW:Ljava/lang/String; = "customview"

.field public static final WIDGET_TYPE_CUSTOM_UNSELECTABLE_TEXTVIEW:Ljava/lang/String; = "nosel-customview"

.field public static final WIDGET_TYPE_EDITTEXT:Ljava/lang/String; = "edittext"

.field public static final WIDGET_TYPE_EDIT_WEBVIEW:Ljava/lang/String; = "edit-webview"

.field public static final WIDGET_TYPE_NOTIFICATION:Ljava/lang/String; = "notification"

.field public static final WIDGET_TYPE_TEXTVIEW:Ljava/lang/String; = "textview"

.field public static final WIDGET_TYPE_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final WIDGET_TYPE_UNSELECTABLE_TEXTVIEW:Ljava/lang/String; = "nosel-textview"

.field public static final WIDGET_TYPE_WEBVIEW:Ljava/lang/String; = "webview"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/textclassifier/TextClassifier$1;

    invoke-direct {v0}, Landroid/view/textclassifier/TextClassifier$1;-><init>()V

    sput-object v0, Landroid/view/textclassifier/TextClassifier;->NO_OP:Landroid/view/textclassifier/TextClassifier;

    return-void
.end method

.method public static typeToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_11

    const/4 v0, 0x1

    if-eq p0, v0, :cond_e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_b

    const-string v0, "Unknown"

    return-object v0

    :cond_b
    const-string v0, "Default system"

    return-object v0

    :cond_e
    const-string v0, "System"

    return-object v0

    :cond_11
    const-string v0, "Local"

    return-object v0
.end method


# virtual methods
.method public classifyText(Landroid/view/textclassifier/TextClassification$Request;)Landroid/view/textclassifier/TextClassification;
    .registers 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/view/textclassifier/TextClassifier$Utils;->checkMainThread()V

    sget-object v0, Landroid/view/textclassifier/TextClassification;->EMPTY:Landroid/view/textclassifier/TextClassification;

    return-object v0
.end method

.method public classifyText(Ljava/lang/CharSequence;IILandroid/os/LocaleList;)Landroid/view/textclassifier/TextClassification;
    .registers 7

    new-instance v0, Landroid/view/textclassifier/TextClassification$Request$Builder;

    invoke-direct {v0, p1, p2, p3}, Landroid/view/textclassifier/TextClassification$Request$Builder;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v0, p4}, Landroid/view/textclassifier/TextClassification$Request$Builder;->setDefaultLocales(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextClassification$Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification$Request$Builder;->build()Landroid/view/textclassifier/TextClassification$Request;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/view/textclassifier/TextClassifier;->classifyText(Landroid/view/textclassifier/TextClassification$Request;)Landroid/view/textclassifier/TextClassification;

    move-result-object v1

    return-object v1
.end method

.method public destroy()V
    .registers 1

    return-void
.end method

.method public detectLanguage(Landroid/view/textclassifier/TextLanguage$Request;)Landroid/view/textclassifier/TextLanguage;
    .registers 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/view/textclassifier/TextClassifier$Utils;->checkMainThread()V

    sget-object v0, Landroid/view/textclassifier/TextLanguage;->EMPTY:Landroid/view/textclassifier/TextLanguage;

    return-object v0
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 2

    return-void
.end method

.method public generateLinks(Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;
    .registers 4

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/view/textclassifier/TextClassifier$Utils;->checkMainThread()V

    new-instance v0, Landroid/view/textclassifier/TextLinks$Builder;

    invoke-virtual {p1}, Landroid/view/textclassifier/TextLinks$Request;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/textclassifier/TextLinks$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/textclassifier/TextLinks$Builder;->build()Landroid/view/textclassifier/TextLinks;

    move-result-object v0

    return-object v0
.end method

.method public getMaxGenerateLinksTextLength()I
    .registers 2

    const v0, 0x7fffffff

    return v0
.end method

.method public isDestroyed()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onSelectionEvent(Landroid/view/textclassifier/SelectionEvent;)V
    .registers 2

    return-void
.end method

.method public onTextClassifierEvent(Landroid/view/textclassifier/TextClassifierEvent;)V
    .registers 2

    return-void
.end method

.method public suggestConversationActions(Landroid/view/textclassifier/ConversationActions$Request;)Landroid/view/textclassifier/ConversationActions;
    .registers 5

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/view/textclassifier/TextClassifier$Utils;->checkMainThread()V

    new-instance v0, Landroid/view/textclassifier/ConversationActions;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/textclassifier/ConversationActions;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method public suggestSelection(Landroid/view/textclassifier/TextSelection$Request;)Landroid/view/textclassifier/TextSelection;
    .registers 5

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/view/textclassifier/TextClassifier$Utils;->checkMainThread()V

    new-instance v0, Landroid/view/textclassifier/TextSelection$Builder;

    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection$Request;->getStartIndex()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection$Request;->getEndIndex()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/view/textclassifier/TextSelection$Builder;-><init>(II)V

    invoke-virtual {v0}, Landroid/view/textclassifier/TextSelection$Builder;->build()Landroid/view/textclassifier/TextSelection;

    move-result-object v0

    return-object v0
.end method

.method public suggestSelection(Ljava/lang/CharSequence;IILandroid/os/LocaleList;)Landroid/view/textclassifier/TextSelection;
    .registers 7

    new-instance v0, Landroid/view/textclassifier/TextSelection$Request$Builder;

    invoke-direct {v0, p1, p2, p3}, Landroid/view/textclassifier/TextSelection$Request$Builder;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v0, p4}, Landroid/view/textclassifier/TextSelection$Request$Builder;->setDefaultLocales(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextSelection$Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/textclassifier/TextSelection$Request$Builder;->build()Landroid/view/textclassifier/TextSelection$Request;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/view/textclassifier/TextClassifier;->suggestSelection(Landroid/view/textclassifier/TextSelection$Request;)Landroid/view/textclassifier/TextSelection;

    move-result-object v1

    return-object v1
.end method
