.class public final Landroid/printservice/CustomPrinterIconCallback;
.super Ljava/lang/Object;
.source "CustomPrinterIconCallback.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CustomPrinterIconCB"


# instance fields
.field private final mObserver:Landroid/printservice/IPrintServiceClient;

.field private final mPrinterId:Landroid/print/PrinterId;


# direct methods
.method constructor <init>(Landroid/print/PrinterId;Landroid/printservice/IPrintServiceClient;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/printservice/CustomPrinterIconCallback;->mPrinterId:Landroid/print/PrinterId;

    iput-object p2, p0, Landroid/printservice/CustomPrinterIconCallback;->mObserver:Landroid/printservice/IPrintServiceClient;

    return-void
.end method


# virtual methods
.method public onCustomPrinterIconLoaded(Landroid/graphics/drawable/Icon;)Z
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroid/printservice/CustomPrinterIconCallback;->mObserver:Landroid/printservice/IPrintServiceClient;

    iget-object v1, p0, Landroid/printservice/CustomPrinterIconCallback;->mPrinterId:Landroid/print/PrinterId;

    invoke-interface {v0, v1, p1}, Landroid/printservice/IPrintServiceClient;->onCustomPrinterIconLoaded(Landroid/print/PrinterId;Landroid/graphics/drawable/Icon;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_a

    nop

    const/4 v0, 0x1

    return v0

    :catch_a
    move-exception v0

    const-string v1, "CustomPrinterIconCB"

    const-string v2, "Could not update icon"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method
