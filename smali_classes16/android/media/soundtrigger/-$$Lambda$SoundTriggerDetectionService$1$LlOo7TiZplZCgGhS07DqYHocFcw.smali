.class public final synthetic Landroid/media/soundtrigger/-$$Lambda$SoundTriggerDetectionService$1$LlOo7TiZplZCgGhS07DqYHocFcw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/QuadConsumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/media/soundtrigger/-$$Lambda$SoundTriggerDetectionService$1$LlOo7TiZplZCgGhS07DqYHocFcw;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/media/soundtrigger/-$$Lambda$SoundTriggerDetectionService$1$LlOo7TiZplZCgGhS07DqYHocFcw;

    invoke-direct {v0}, Landroid/media/soundtrigger/-$$Lambda$SoundTriggerDetectionService$1$LlOo7TiZplZCgGhS07DqYHocFcw;-><init>()V

    sput-object v0, Landroid/media/soundtrigger/-$$Lambda$SoundTriggerDetectionService$1$LlOo7TiZplZCgGhS07DqYHocFcw;->INSTANCE:Landroid/media/soundtrigger/-$$Lambda$SoundTriggerDetectionService$1$LlOo7TiZplZCgGhS07DqYHocFcw;

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

    check-cast p4, Landroid/media/soundtrigger/ISoundTriggerDetectionServiceClient;

    invoke-static {p1, p2, p3, p4}, Landroid/media/soundtrigger/SoundTriggerDetectionService$1;->lambda$setClient$0(Ljava/lang/Object;Ljava/util/UUID;Landroid/os/Bundle;Landroid/media/soundtrigger/ISoundTriggerDetectionServiceClient;)V

    return-void
.end method
