.class public final synthetic Landroid/service/voice/-$$Lambda$VoiceInteractionService$V4h-zKzsPhikYYwTTwjkcep67fc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/service/voice/-$$Lambda$VoiceInteractionService$V4h-zKzsPhikYYwTTwjkcep67fc;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/service/voice/-$$Lambda$VoiceInteractionService$V4h-zKzsPhikYYwTTwjkcep67fc;

    invoke-direct {v0}, Landroid/service/voice/-$$Lambda$VoiceInteractionService$V4h-zKzsPhikYYwTTwjkcep67fc;-><init>()V

    sput-object v0, Landroid/service/voice/-$$Lambda$VoiceInteractionService$V4h-zKzsPhikYYwTTwjkcep67fc;->INSTANCE:Landroid/service/voice/-$$Lambda$VoiceInteractionService$V4h-zKzsPhikYYwTTwjkcep67fc;

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

    check-cast p1, Landroid/service/voice/VoiceInteractionService;

    invoke-static {p1}, Landroid/service/voice/VoiceInteractionService;->lambda$V4h-zKzsPhikYYwTTwjkcep67fc(Landroid/service/voice/VoiceInteractionService;)V

    return-void
.end method
