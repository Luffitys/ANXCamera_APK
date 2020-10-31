.class public final synthetic Lcom/android/internal/accessibility/-$$Lambda$qdzoyIBhDB17ZFWPp1Rf8ICv-R8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/accessibility/-$$Lambda$qdzoyIBhDB17ZFWPp1Rf8ICv-R8;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/internal/accessibility/-$$Lambda$qdzoyIBhDB17ZFWPp1Rf8ICv-R8;

    invoke-direct {v0}, Lcom/android/internal/accessibility/-$$Lambda$qdzoyIBhDB17ZFWPp1Rf8ICv-R8;-><init>()V

    sput-object v0, Lcom/android/internal/accessibility/-$$Lambda$qdzoyIBhDB17ZFWPp1Rf8ICv-R8;->INSTANCE:Lcom/android/internal/accessibility/-$$Lambda$qdzoyIBhDB17ZFWPp1Rf8ICv-R8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p1}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    return-void
.end method
