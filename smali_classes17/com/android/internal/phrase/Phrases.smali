.class public Lcom/android/internal/phrase/Phrases;
.super Ljava/lang/Object;
.source "Phrases.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/phrase/Phrases$Utils;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "miui.phrase"

.field public static CONTENT_URI:Landroid/net/Uri;

.field private static PHRASE_ADD_ACTIVITY_NAME:Ljava/lang/String;

.field private static PHRASE_EDIT_ACTIVITY_NAME:Ljava/lang/String;

.field private static PHRASE_PACKAGE_NAME:Ljava/lang/String;

.field public static WORDS:Ljava/lang/String;

.field public static WORDS_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "com.miui.phrase"

    sput-object v0, Lcom/android/internal/phrase/Phrases;->PHRASE_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "com.miui.phrase.AddPhraseActivity"

    sput-object v0, Lcom/android/internal/phrase/Phrases;->PHRASE_ADD_ACTIVITY_NAME:Ljava/lang/String;

    const-string v0, "com.miui.phrase.PhraseEditActivity"

    sput-object v0, Lcom/android/internal/phrase/Phrases;->PHRASE_EDIT_ACTIVITY_NAME:Ljava/lang/String;

    const-string v0, "content://miui.phrase/phrase"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/phrase/Phrases;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://miui.phrase/phrase/words"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/phrase/Phrases;->WORDS_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v0, "words"

    sput-object v0, Lcom/android/internal/phrase/Phrases;->WORDS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/internal/phrase/Phrases;->PHRASE_PACKAGE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/internal/phrase/Phrases;->PHRASE_ADD_ACTIVITY_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/internal/phrase/Phrases;->PHRASE_EDIT_ACTIVITY_NAME:Ljava/lang/String;

    return-object v0
.end method
