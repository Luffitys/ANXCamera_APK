.class final Landroid/printservice/PrintService$ServiceHandler;
.super Landroid/os/Handler;
.source "PrintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/printservice/PrintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# static fields
.field public static final MSG_CREATE_PRINTER_DISCOVERY_SESSION:I = 0x1

.field public static final MSG_DESTROY_PRINTER_DISCOVERY_SESSION:I = 0x2

.field public static final MSG_ON_PRINTJOB_QUEUED:I = 0x9

.field public static final MSG_ON_REQUEST_CANCEL_PRINTJOB:I = 0xa

.field public static final MSG_REQUEST_CUSTOM_PRINTER_ICON:I = 0x7

.field public static final MSG_SET_CLIENT:I = 0xb

.field public static final MSG_START_PRINTER_DISCOVERY:I = 0x3

.field public static final MSG_START_PRINTER_STATE_TRACKING:I = 0x6

.field public static final MSG_STOP_PRINTER_DISCOVERY:I = 0x4

.field public static final MSG_STOP_PRINTER_STATE_TRACKING:I = 0x8

.field public static final MSG_VALIDATE_PRINTERS:I = 0x5


# instance fields
.field final synthetic this$0:Landroid/printservice/PrintService;


# direct methods
.method public constructor <init>(Landroid/printservice/PrintService;Landroid/os/Looper;)V
    .registers 4

    iput-object p1, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_13c

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1c
    iget-object v1, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/printservice/IPrintServiceClient;

    # setter for: Landroid/printservice/PrintService;->mClient:Landroid/printservice/IPrintServiceClient;
    invoke-static {v1, v2}, Landroid/printservice/PrintService;->access$302(Landroid/printservice/PrintService;Landroid/printservice/IPrintServiceClient;)Landroid/printservice/IPrintServiceClient;

    iget-object v1, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    # getter for: Landroid/printservice/PrintService;->mClient:Landroid/printservice/IPrintServiceClient;
    invoke-static {v1}, Landroid/printservice/PrintService;->access$300(Landroid/printservice/PrintService;)Landroid/printservice/IPrintServiceClient;

    move-result-object v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-virtual {v1}, Landroid/printservice/PrintService;->onConnected()V

    goto/16 :goto_12a

    :cond_34
    iget-object v1, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-virtual {v1}, Landroid/printservice/PrintService;->onDisconnected()V

    goto/16 :goto_12a

    :pswitch_3b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/print/PrintJobInfo;

    iget-object v2, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    new-instance v3, Landroid/printservice/PrintJob;

    # getter for: Landroid/printservice/PrintService;->mClient:Landroid/printservice/IPrintServiceClient;
    invoke-static {v2}, Landroid/printservice/PrintService;->access$300(Landroid/printservice/PrintService;)Landroid/printservice/IPrintServiceClient;

    move-result-object v4

    invoke-direct {v3, v2, v1, v4}, Landroid/printservice/PrintJob;-><init>(Landroid/content/Context;Landroid/print/PrintJobInfo;Landroid/printservice/IPrintServiceClient;)V

    invoke-virtual {v2, v3}, Landroid/printservice/PrintService;->onRequestCancelPrintJob(Landroid/printservice/PrintJob;)V

    goto/16 :goto_12a

    :pswitch_4f
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/print/PrintJobInfo;

    iget-object v2, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    new-instance v3, Landroid/printservice/PrintJob;

    # getter for: Landroid/printservice/PrintService;->mClient:Landroid/printservice/IPrintServiceClient;
    invoke-static {v2}, Landroid/printservice/PrintService;->access$300(Landroid/printservice/PrintService;)Landroid/printservice/IPrintServiceClient;

    move-result-object v4

    invoke-direct {v3, v2, v1, v4}, Landroid/printservice/PrintJob;-><init>(Landroid/content/Context;Landroid/print/PrintJobInfo;Landroid/printservice/IPrintServiceClient;)V

    invoke-virtual {v2, v3}, Landroid/printservice/PrintService;->onPrintJobQueued(Landroid/printservice/PrintJob;)V

    goto/16 :goto_12a

    :pswitch_63
    iget-object v1, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    # getter for: Landroid/printservice/PrintService;->mDiscoverySession:Landroid/printservice/PrinterDiscoverySession;
    invoke-static {v1}, Landroid/printservice/PrintService;->access$200(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object v1

    if-eqz v1, :cond_12a

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/print/PrinterId;

    iget-object v2, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    # getter for: Landroid/printservice/PrintService;->mDiscoverySession:Landroid/printservice/PrinterDiscoverySession;
    invoke-static {v2}, Landroid/printservice/PrintService;->access$200(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/printservice/PrinterDiscoverySession;->stopPrinterStateTracking(Landroid/print/PrinterId;)V

    goto/16 :goto_12a

    :pswitch_7a
    iget-object v1, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    # getter for: Landroid/printservice/PrintService;->mDiscoverySession:Landroid/printservice/PrinterDiscoverySession;
    invoke-static {v1}, Landroid/printservice/PrintService;->access$200(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object v1

    if-eqz v1, :cond_12a

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/print/PrinterId;

    iget-object v2, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    # getter for: Landroid/printservice/PrintService;->mDiscoverySession:Landroid/printservice/PrinterDiscoverySession;
    invoke-static {v2}, Landroid/printservice/PrintService;->access$200(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/printservice/PrinterDiscoverySession;->requestCustomPrinterIcon(Landroid/print/PrinterId;)V

    goto/16 :goto_12a

    :pswitch_91
    iget-object v1, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    # getter for: Landroid/printservice/PrintService;->mDiscoverySession:Landroid/printservice/PrinterDiscoverySession;
    invoke-static {v1}, Landroid/printservice/PrintService;->access$200(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object v1

    if-eqz v1, :cond_12a

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/print/PrinterId;

    iget-object v2, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    # getter for: Landroid/printservice/PrintService;->mDiscoverySession:Landroid/printservice/PrinterDiscoverySession;
    invoke-static {v2}, Landroid/printservice/PrintService;->access$200(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/printservice/PrinterDiscoverySession;->startPrinterStateTracking(Landroid/print/PrinterId;)V

    goto/16 :goto_12a

    :pswitch_a8
    iget-object v1, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    # getter for: Landroid/printservice/PrintService;->mDiscoverySession:Landroid/printservice/PrinterDiscoverySession;
    invoke-static {v1}, Landroid/printservice/PrintService;->access$200(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object v1

    if-eqz v1, :cond_12a

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    # getter for: Landroid/printservice/PrintService;->mDiscoverySession:Landroid/printservice/PrinterDiscoverySession;
    invoke-static {v2}, Landroid/printservice/PrintService;->access$200(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/printservice/PrinterDiscoverySession;->validatePrinters(Ljava/util/List;)V

    goto :goto_12a

    :pswitch_be
    iget-object v1, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    # getter for: Landroid/printservice/PrintService;->mDiscoverySession:Landroid/printservice/PrinterDiscoverySession;
    invoke-static {v1}, Landroid/printservice/PrintService;->access$200(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object v1

    if-eqz v1, :cond_12a

    iget-object v1, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    # getter for: Landroid/printservice/PrintService;->mDiscoverySession:Landroid/printservice/PrinterDiscoverySession;
    invoke-static {v1}, Landroid/printservice/PrintService;->access$200(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object v1

    invoke-virtual {v1}, Landroid/printservice/PrinterDiscoverySession;->stopPrinterDiscovery()V

    goto :goto_12a

    :pswitch_d0
    iget-object v1, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    # getter for: Landroid/printservice/PrintService;->mDiscoverySession:Landroid/printservice/PrinterDiscoverySession;
    invoke-static {v1}, Landroid/printservice/PrintService;->access$200(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object v1

    if-eqz v1, :cond_12a

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    # getter for: Landroid/printservice/PrintService;->mDiscoverySession:Landroid/printservice/PrinterDiscoverySession;
    invoke-static {v2}, Landroid/printservice/PrintService;->access$200(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/printservice/PrinterDiscoverySession;->startPrinterDiscovery(Ljava/util/List;)V

    goto :goto_12a

    :pswitch_e6
    iget-object v1, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    # getter for: Landroid/printservice/PrintService;->mDiscoverySession:Landroid/printservice/PrinterDiscoverySession;
    invoke-static {v1}, Landroid/printservice/PrintService;->access$200(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object v1

    if-eqz v1, :cond_12a

    iget-object v1, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    # getter for: Landroid/printservice/PrintService;->mDiscoverySession:Landroid/printservice/PrinterDiscoverySession;
    invoke-static {v1}, Landroid/printservice/PrintService;->access$200(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object v1

    invoke-virtual {v1}, Landroid/printservice/PrinterDiscoverySession;->destroy()V

    iget-object v1, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    const/4 v2, 0x0

    # setter for: Landroid/printservice/PrintService;->mDiscoverySession:Landroid/printservice/PrinterDiscoverySession;
    invoke-static {v1, v2}, Landroid/printservice/PrintService;->access$202(Landroid/printservice/PrintService;Landroid/printservice/PrinterDiscoverySession;)Landroid/printservice/PrinterDiscoverySession;

    goto :goto_12a

    :pswitch_fe
    iget-object v1, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-virtual {v1}, Landroid/printservice/PrintService;->onCreatePrinterDiscoverySession()Landroid/printservice/PrinterDiscoverySession;

    move-result-object v1

    if-eqz v1, :cond_133

    invoke-virtual {v1}, Landroid/printservice/PrinterDiscoverySession;->getId()I

    move-result v2

    iget-object v3, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    # getter for: Landroid/printservice/PrintService;->mLastSessionId:I
    invoke-static {v3}, Landroid/printservice/PrintService;->access$100(Landroid/printservice/PrintService;)I

    move-result v3

    if-eq v2, v3, :cond_12b

    iget-object v2, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    # setter for: Landroid/printservice/PrintService;->mDiscoverySession:Landroid/printservice/PrinterDiscoverySession;
    invoke-static {v2, v1}, Landroid/printservice/PrintService;->access$202(Landroid/printservice/PrintService;Landroid/printservice/PrinterDiscoverySession;)Landroid/printservice/PrinterDiscoverySession;

    iget-object v2, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-virtual {v1}, Landroid/printservice/PrinterDiscoverySession;->getId()I

    move-result v3

    # setter for: Landroid/printservice/PrintService;->mLastSessionId:I
    invoke-static {v2, v3}, Landroid/printservice/PrintService;->access$102(Landroid/printservice/PrintService;I)I

    iget-object v2, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    # getter for: Landroid/printservice/PrintService;->mClient:Landroid/printservice/IPrintServiceClient;
    invoke-static {v2}, Landroid/printservice/PrintService;->access$300(Landroid/printservice/PrintService;)Landroid/printservice/IPrintServiceClient;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/printservice/PrinterDiscoverySession;->setObserver(Landroid/printservice/IPrintServiceClient;)V

    nop

    :cond_12a
    :goto_12a
    return-void

    :cond_12b
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "cannot reuse session instances"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_133
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "session cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_data_13c
    .packed-switch 0x1
        :pswitch_fe
        :pswitch_e6
        :pswitch_d0
        :pswitch_be
        :pswitch_a8
        :pswitch_91
        :pswitch_7a
        :pswitch_63
        :pswitch_4f
        :pswitch_3b
        :pswitch_1c
    .end packed-switch
.end method
