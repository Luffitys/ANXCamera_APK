.class public final synthetic Lcom/android/camera/tts/OooO0O0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic OooO00o:Lcom/android/camera/tts/OooO0O0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/tts/OooO0O0;

    invoke-direct {v0}, Lcom/android/camera/tts/OooO0O0;-><init>()V

    sput-object v0, Lcom/android/camera/tts/OooO0O0;->OooO00o:Lcom/android/camera/tts/OooO0O0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/camera/tts/TTSHelper$BatchListener;

    check-cast p2, Landroid/util/Pair;

    invoke-virtual {p1, p2}, Lcom/android/camera/tts/TTSHelper$BatchListener;->onDone(Landroid/util/Pair;)V

    return-void
.end method
