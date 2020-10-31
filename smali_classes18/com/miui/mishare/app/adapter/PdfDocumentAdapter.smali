.class public Lcom/miui/mishare/app/adapter/PdfDocumentAdapter;
.super Landroid/print/PrintDocumentAdapter;
.source "PdfDocumentAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFileName:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Landroid/print/PrintDocumentAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/mishare/app/adapter/PdfDocumentAdapter;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/miui/mishare/app/adapter/PdfDocumentAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/mishare/app/adapter/PdfDocumentAdapter;->mUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/miui/mishare/app/adapter/PdfDocumentAdapter;->mFileName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V
    .registers 9

    invoke-virtual {p3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p4}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutCancelled()V

    goto :goto_2b

    :cond_a
    new-instance v0, Landroid/print/PrintDocumentInfo$Builder;

    iget-object v1, p0, Lcom/miui/mishare/app/adapter/PdfDocumentAdapter;->mFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/print/PrintDocumentInfo$Builder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/print/PrintDocumentInfo$Builder;->setContentType(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/print/PrintDocumentInfo$Builder;->setPageCount(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/print/PrintDocumentInfo$Builder;->build()Landroid/print/PrintDocumentInfo;

    invoke-virtual {v0}, Landroid/print/PrintDocumentInfo$Builder;->build()Landroid/print/PrintDocumentInfo;

    move-result-object v1

    invoke-virtual {p2, p1}, Landroid/print/PrintAttributes;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {p4, v1, v2}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V

    :goto_2b
    return-void
.end method

.method public onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .registers 12

    iget-object v0, p0, Lcom/miui/mishare/app/adapter/PdfDocumentAdapter;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    :try_start_6
    iget-object v1, p0, Lcom/miui/mishare/app/adapter/PdfDocumentAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/mishare/app/adapter/PdfDocumentAdapter;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_12} :catch_14

    move-object v0, v1

    goto :goto_18

    :catch_14
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_18
    if-nez v0, :cond_1b

    return-void

    :cond_1b
    const/4 v1, 0x0

    :try_start_1c
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v1, v2

    const/16 v2, 0x4000

    new-array v2, v2, [B

    :goto_2a
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v4, v3

    const/4 v5, 0x0

    if-ltz v3, :cond_3c

    invoke-virtual {p3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_3c

    invoke-virtual {v1, v2, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_2a

    :cond_3c
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-virtual {p4}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteCancelled()V

    goto :goto_50

    :cond_46
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/print/PageRange;

    sget-object v6, Landroid/print/PageRange;->ALL_PAGES:Landroid/print/PageRange;

    aput-object v6, v3, v5

    invoke-virtual {p4, v3}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFinished([Landroid/print/PageRange;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_50} :catch_64
    .catchall {:try_start_1c .. :try_end_50} :catchall_62

    :goto_50
    :try_start_50
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_54

    goto :goto_58

    :catch_54
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :goto_58
    nop

    :try_start_59
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_5d

    :goto_5c
    goto :goto_7a

    :catch_5d
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5c

    :catchall_62
    move-exception v2

    goto :goto_7b

    :catch_64
    move-exception v2

    :try_start_65
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFailed(Ljava/lang/CharSequence;)V
    :try_end_6c
    .catchall {:try_start_65 .. :try_end_6c} :catchall_62

    :try_start_6c
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_70

    goto :goto_74

    :catch_70
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :goto_74
    if-eqz v1, :cond_7a

    :try_start_76
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_5d

    goto :goto_5c

    :cond_7a
    :goto_7a
    return-void

    :goto_7b
    :try_start_7b
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_7f

    goto :goto_83

    :catch_7f
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :goto_83
    if-eqz v1, :cond_8d

    :try_start_85
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_89

    goto :goto_8d

    :catch_89
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_8d
    :goto_8d
    throw v2
.end method
