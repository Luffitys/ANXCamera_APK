.class public final Landroid/printservice/PrintDocument;
.super Ljava/lang/Object;
.source "PrintDocument.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PrintDocument"


# instance fields
.field private final mInfo:Landroid/print/PrintDocumentInfo;

.field private final mPrintJobId:Landroid/print/PrintJobId;

.field private final mPrintServiceClient:Landroid/printservice/IPrintServiceClient;


# direct methods
.method constructor <init>(Landroid/print/PrintJobId;Landroid/printservice/IPrintServiceClient;Landroid/print/PrintDocumentInfo;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/printservice/PrintDocument;->mPrintJobId:Landroid/print/PrintJobId;

    iput-object p2, p0, Landroid/printservice/PrintDocument;->mPrintServiceClient:Landroid/printservice/IPrintServiceClient;

    iput-object p3, p0, Landroid/printservice/PrintDocument;->mInfo:Landroid/print/PrintDocumentInfo;

    return-void
.end method


# virtual methods
.method public getData()Landroid/os/ParcelFileDescriptor;
    .registers 8

    const-string v0, "Error calling getting print job data!"

    const-string v1, "PrintDocument"

    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_9
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v4, v5

    move-object v2, v5

    const/4 v5, 0x1

    aget-object v5, v4, v5

    move-object v3, v5

    iget-object v5, p0, Landroid/printservice/PrintDocument;->mPrintServiceClient:Landroid/printservice/IPrintServiceClient;

    iget-object v6, p0, Landroid/printservice/PrintDocument;->mPrintJobId:Landroid/print/PrintJobId;

    invoke-interface {v5, v3, v6}, Landroid/printservice/IPrintServiceClient;->writePrintJobData(Landroid/os/ParcelFileDescriptor;Landroid/print/PrintJobId;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1c} :catch_34
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1c} :catch_27
    .catchall {:try_start_9 .. :try_end_1c} :catchall_25

    nop

    if-eqz v3, :cond_24

    :try_start_1f
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_23

    goto :goto_24

    :catch_23
    move-exception v0

    :cond_24
    :goto_24
    return-object v2

    :catchall_25
    move-exception v0

    goto :goto_41

    :catch_27
    move-exception v4

    :try_start_28
    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_25

    nop

    if-eqz v3, :cond_3f

    :try_start_2e
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_32

    :goto_31
    goto :goto_3f

    :catch_32
    move-exception v0

    goto :goto_31

    :catch_34
    move-exception v4

    :try_start_35
    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_25

    nop

    if-eqz v3, :cond_3f

    :try_start_3b
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_32

    goto :goto_31

    :cond_3f
    :goto_3f
    const/4 v0, 0x0

    return-object v0

    :goto_41
    if-eqz v3, :cond_48

    :try_start_43
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_48

    :catch_47
    move-exception v1

    :cond_48
    :goto_48
    throw v0
.end method

.method public getInfo()Landroid/print/PrintDocumentInfo;
    .registers 2

    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    iget-object v0, p0, Landroid/printservice/PrintDocument;->mInfo:Landroid/print/PrintDocumentInfo;

    return-object v0
.end method
