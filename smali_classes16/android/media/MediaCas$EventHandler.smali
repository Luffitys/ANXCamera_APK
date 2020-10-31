.class Landroid/media/MediaCas$EventHandler;
.super Landroid/os/Handler;
.source "MediaCas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# static fields
.field private static final DATA_KEY:Ljava/lang/String; = "data"

.field private static final MSG_CAS_EVENT:I = 0x0

.field private static final MSG_CAS_RESOURCE_LOST:I = 0x3

.field private static final MSG_CAS_SESSION_EVENT:I = 0x1

.field private static final MSG_CAS_STATUS_EVENT:I = 0x2

.field private static final SESSION_KEY:Ljava/lang/String; = "sessionId"


# instance fields
.field final synthetic this$0:Landroid/media/MediaCas;


# direct methods
.method public constructor <init>(Landroid/media/MediaCas;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Landroid/media/MediaCas$EventHandler;->this$0:Landroid/media/MediaCas;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1e

    iget-object v0, p0, Landroid/media/MediaCas$EventHandler;->this$0:Landroid/media/MediaCas;

    # getter for: Landroid/media/MediaCas;->mListener:Landroid/media/MediaCas$EventListener;
    invoke-static {v0}, Landroid/media/MediaCas;->access$100(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventListener;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCas$EventHandler;->this$0:Landroid/media/MediaCas;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v4, p0, Landroid/media/MediaCas$EventHandler;->this$0:Landroid/media/MediaCas;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    # invokes: Landroid/media/MediaCas;->toBytes(Ljava/util/ArrayList;)[B
    invoke-static {v4, v5}, Landroid/media/MediaCas;->access$000(Landroid/media/MediaCas;Ljava/util/ArrayList;)[B

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/media/MediaCas$EventListener;->onEvent(Landroid/media/MediaCas;II[B)V

    goto :goto_90

    :cond_1e
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4e

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCas$EventHandler;->this$0:Landroid/media/MediaCas;

    const-string/jumbo v2, "sessionId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    # invokes: Landroid/media/MediaCas;->toByteArray([B)Ljava/util/ArrayList;
    invoke-static {v1, v2}, Landroid/media/MediaCas;->access$200(Landroid/media/MediaCas;[B)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCas$EventHandler;->this$0:Landroid/media/MediaCas;

    # getter for: Landroid/media/MediaCas;->mListener:Landroid/media/MediaCas$EventListener;
    invoke-static {v2}, Landroid/media/MediaCas;->access$100(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventListener;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaCas$EventHandler;->this$0:Landroid/media/MediaCas;

    invoke-virtual {v4, v1}, Landroid/media/MediaCas;->createFromSessionId(Ljava/util/ArrayList;)Landroid/media/MediaCas$Session;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget v7, p1, Landroid/os/Message;->arg2:I

    const-string v2, "data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v8

    invoke-interface/range {v3 .. v8}, Landroid/media/MediaCas$EventListener;->onSessionEvent(Landroid/media/MediaCas;Landroid/media/MediaCas$Session;II[B)V

    goto :goto_90

    :cond_4e
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_80

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_70

    iget-object v0, p0, Landroid/media/MediaCas$EventHandler;->this$0:Landroid/media/MediaCas;

    # getter for: Landroid/media/MediaCas;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;
    invoke-static {v0}, Landroid/media/MediaCas;->access$300(Landroid/media/MediaCas;)Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    move-result-object v0

    if-eqz v0, :cond_70

    iget-object v0, p0, Landroid/media/MediaCas$EventHandler;->this$0:Landroid/media/MediaCas;

    # getter for: Landroid/media/MediaCas;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;
    invoke-static {v0}, Landroid/media/MediaCas;->access$300(Landroid/media/MediaCas;)Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCas$EventHandler;->this$0:Landroid/media/MediaCas;

    # getter for: Landroid/media/MediaCas;->mCasSystemId:I
    invoke-static {v1}, Landroid/media/MediaCas;->access$400(Landroid/media/MediaCas;)I

    move-result v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->updateCasInfo(II)V

    :cond_70
    iget-object v0, p0, Landroid/media/MediaCas$EventHandler;->this$0:Landroid/media/MediaCas;

    # getter for: Landroid/media/MediaCas;->mListener:Landroid/media/MediaCas$EventListener;
    invoke-static {v0}, Landroid/media/MediaCas;->access$100(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventListener;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCas$EventHandler;->this$0:Landroid/media/MediaCas;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, v3}, Landroid/media/MediaCas$EventListener;->onPluginStatusUpdate(Landroid/media/MediaCas;II)V

    goto :goto_90

    :cond_80
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_90

    iget-object v0, p0, Landroid/media/MediaCas$EventHandler;->this$0:Landroid/media/MediaCas;

    # getter for: Landroid/media/MediaCas;->mListener:Landroid/media/MediaCas$EventListener;
    invoke-static {v0}, Landroid/media/MediaCas;->access$100(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventListener;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCas$EventHandler;->this$0:Landroid/media/MediaCas;

    invoke-interface {v0, v1}, Landroid/media/MediaCas$EventListener;->onResourceLost(Landroid/media/MediaCas;)V

    :cond_90
    :goto_90
    return-void
.end method
