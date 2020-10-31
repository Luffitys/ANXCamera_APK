.class public Lcom/miui/mishare/app/activity/MiPrintControlActivity;
.super Landroid/app/Activity;
.source "MiPrintControlActivity.java"


# static fields
.field private static final PRINT_PREFIX:Ljava/lang/String; = "MIUI:"


# instance fields
.field private mResumeTimes:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/mishare/app/activity/MiPrintControlActivity;->mResumeTimes:I

    return-void
.end method

.method private doPdfPrint(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 7

    const-string v0, "print"

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/activity/MiPrintControlActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintManager;

    new-instance v1, Lcom/miui/mishare/app/adapter/PdfDocumentAdapter;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/mishare/app/adapter/PdfDocumentAdapter;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    if-eqz v0, :cond_2c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MIUI:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v3}, Landroid/print/PrintAttributes$Builder;-><init>()V

    invoke-virtual {v3}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    :cond_2c
    return-void
.end method

.method private print(Landroid/net/Uri;)V
    .registers 6

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/miui/mishare/app/activity/MiPrintControlActivity;->finish()V

    goto :goto_3d

    :cond_6
    new-instance v0, Lcom/miui/mishare/app/util/PrintHelper;

    invoke-direct {v0, p0}, Lcom/miui/mishare/app/util/PrintHelper;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/mishare/app/util/PrintHelper;->setScaleMode(I)V

    invoke-static {p0, p1}, Lcom/miui/mishare/app/util/MiShareFileHelper;->getFileNameFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1}, Lcom/miui/mishare/app/util/MiShareFileHelper;->isFilePdf(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-direct {p0, p1, v1}, Lcom/miui/mishare/app/activity/MiPrintControlActivity;->doPdfPrint(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_3d

    :cond_1d
    invoke-static {p0, p1}, Lcom/miui/mishare/app/util/MiShareFileHelper;->isImageCanPrint(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_3d

    :try_start_23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MIUI:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Lcom/miui/mishare/app/util/PrintHelper;->printBitmap(Ljava/lang/String;Landroid/net/Uri;Lcom/miui/mishare/app/util/PrintHelper$OnPrintFinishCallback;)V
    :try_end_38
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_38} :catch_39

    goto :goto_3d

    :catch_39
    move-exception v2

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_3d
    :goto_3d
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/mishare/app/activity/MiPrintControlActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/mishare/app/activity/MiPrintControlActivity;->print(Landroid/net/Uri;)V

    return-void
.end method

.method protected onResume()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget v0, p0, Lcom/miui/mishare/app/activity/MiPrintControlActivity;->mResumeTimes:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/mishare/app/activity/MiPrintControlActivity;->mResumeTimes:I

    if-le v0, v1, :cond_e

    invoke-virtual {p0}, Lcom/miui/mishare/app/activity/MiPrintControlActivity;->finish()V

    :cond_e
    return-void
.end method
