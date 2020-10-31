.class Landroid/telephony/ims/ImsVideoCallProvider$1;
.super Landroid/os/Handler;
.source "ImsVideoCallProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ImsVideoCallProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/ims/ImsVideoCallProvider;


# direct methods
.method constructor <init>(Landroid/telephony/ims/ImsVideoCallProvider;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Landroid/telephony/ims/ImsVideoCallProvider$1;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_9e

    goto/16 :goto_9c

    :pswitch_7
    iget-object v0, p0, Landroid/telephony/ims/ImsVideoCallProvider$1;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsVideoCallProvider;->onSetPauseImage(Landroid/net/Uri;)V

    goto/16 :goto_9c

    :pswitch_12
    iget-object v0, p0, Landroid/telephony/ims/ImsVideoCallProvider$1;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsVideoCallProvider;->onRequestCallDataUsage()V

    goto/16 :goto_9c

    :pswitch_19
    iget-object v0, p0, Landroid/telephony/ims/ImsVideoCallProvider$1;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsVideoCallProvider;->onRequestCameraCapabilities()V

    goto/16 :goto_9c

    :pswitch_20
    iget-object v0, p0, Landroid/telephony/ims/ImsVideoCallProvider$1;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/VideoProfile;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsVideoCallProvider;->onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    goto/16 :goto_9c

    :pswitch_2b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :try_start_2f
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/VideoProfile;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/telecom/VideoProfile;

    iget-object v3, p0, Landroid/telephony/ims/ImsVideoCallProvider$1;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    invoke-virtual {v3, v1, v2}, Landroid/telephony/ims/ImsVideoCallProvider;->onSendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_3c
    .catchall {:try_start_2f .. :try_end_3c} :catchall_41

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    nop

    goto :goto_9c

    :catchall_41
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    :pswitch_46
    iget-object v0, p0, Landroid/telephony/ims/ImsVideoCallProvider$1;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsVideoCallProvider;->onSetZoom(F)V

    goto :goto_9c

    :pswitch_54
    iget-object v0, p0, Landroid/telephony/ims/ImsVideoCallProvider$1;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsVideoCallProvider;->onSetDeviceOrientation(I)V

    goto :goto_9c

    :pswitch_5c
    iget-object v0, p0, Landroid/telephony/ims/ImsVideoCallProvider$1;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsVideoCallProvider;->onSetDisplaySurface(Landroid/view/Surface;)V

    goto :goto_9c

    :pswitch_66
    iget-object v0, p0, Landroid/telephony/ims/ImsVideoCallProvider$1;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsVideoCallProvider;->onSetPreviewSurface(Landroid/view/Surface;)V

    goto :goto_9c

    :pswitch_70
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :try_start_74
    iget-object v1, p0, Landroid/telephony/ims/ImsVideoCallProvider$1;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsVideoCallProvider;->onSetCamera(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsVideoCallProvider$1;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-virtual {v1, v2, v3}, Landroid/telephony/ims/ImsVideoCallProvider;->onSetCamera(Ljava/lang/String;I)V
    :try_end_88
    .catchall {:try_start_74 .. :try_end_88} :catchall_8d

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    nop

    goto :goto_9c

    :catchall_8d
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    :pswitch_92
    iget-object v0, p0, Landroid/telephony/ims/ImsVideoCallProvider$1;->this$0:Landroid/telephony/ims/ImsVideoCallProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/ims/internal/IImsVideoCallCallback;

    # setter for: Landroid/telephony/ims/ImsVideoCallProvider;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;
    invoke-static {v0, v1}, Landroid/telephony/ims/ImsVideoCallProvider;->access$002(Landroid/telephony/ims/ImsVideoCallProvider;Lcom/android/ims/internal/IImsVideoCallCallback;)Lcom/android/ims/internal/IImsVideoCallCallback;

    nop

    :goto_9c
    return-void

    nop

    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_92
        :pswitch_70
        :pswitch_66
        :pswitch_5c
        :pswitch_54
        :pswitch_46
        :pswitch_2b
        :pswitch_20
        :pswitch_19
        :pswitch_12
        :pswitch_7
    .end packed-switch
.end method
