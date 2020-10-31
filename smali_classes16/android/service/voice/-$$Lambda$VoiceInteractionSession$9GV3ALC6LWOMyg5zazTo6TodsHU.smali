.class public final synthetic Landroid/service/voice/-$$Lambda$VoiceInteractionSession$9GV3ALC6LWOMyg5zazTo6TodsHU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/Executor;

.field public final synthetic f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/voice/-$$Lambda$VoiceInteractionSession$9GV3ALC6LWOMyg5zazTo6TodsHU;->f$0:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/service/voice/-$$Lambda$VoiceInteractionSession$9GV3ALC6LWOMyg5zazTo6TodsHU;->f$1:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Landroid/service/voice/-$$Lambda$VoiceInteractionSession$9GV3ALC6LWOMyg5zazTo6TodsHU;->f$0:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/service/voice/-$$Lambda$VoiceInteractionSession$9GV3ALC6LWOMyg5zazTo6TodsHU;->f$1:Ljava/util/function/Consumer;

    check-cast p1, Landroid/os/Bundle;

    invoke-static {v0, v1, p1}, Landroid/service/voice/VoiceInteractionSession;->lambda$performDirectAction$6(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/os/Bundle;)V

    return-void
.end method
