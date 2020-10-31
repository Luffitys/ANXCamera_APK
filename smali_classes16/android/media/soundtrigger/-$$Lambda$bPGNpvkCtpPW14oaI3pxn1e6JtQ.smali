.class public final synthetic Landroid/media/soundtrigger/-$$Lambda$bPGNpvkCtpPW14oaI3pxn1e6JtQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/QuadConsumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/media/soundtrigger/-$$Lambda$bPGNpvkCtpPW14oaI3pxn1e6JtQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/media/soundtrigger/-$$Lambda$bPGNpvkCtpPW14oaI3pxn1e6JtQ;

    invoke-direct {v0}, Landroid/media/soundtrigger/-$$Lambda$bPGNpvkCtpPW14oaI3pxn1e6JtQ;-><init>()V

    sput-object v0, Landroid/media/soundtrigger/-$$Lambda$bPGNpvkCtpPW14oaI3pxn1e6JtQ;->INSTANCE:Landroid/media/soundtrigger/-$$Lambda$bPGNpvkCtpPW14oaI3pxn1e6JtQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    check-cast p1, Landroid/media/soundtrigger/SoundTriggerDetectionService;

    check-cast p2, Ljava/util/UUID;

    check-cast p3, Landroid/os/Bundle;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-virtual {p1, p2, p3, p4}, Landroid/media/soundtrigger/SoundTriggerDetectionService;->onStopOperation(Ljava/util/UUID;Landroid/os/Bundle;I)V

    return-void
.end method
