.class public final synthetic Landroid/media/-$$Lambda$MediaScannerConnection$X7K_c7l7bfQR6Mg9eCJVPmLMn6I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:[Ljava/lang/String;

.field public final synthetic f$2:Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/-$$Lambda$MediaScannerConnection$X7K_c7l7bfQR6Mg9eCJVPmLMn6I;->f$0:Landroid/content/Context;

    iput-object p2, p0, Landroid/media/-$$Lambda$MediaScannerConnection$X7K_c7l7bfQR6Mg9eCJVPmLMn6I;->f$1:[Ljava/lang/String;

    iput-object p3, p0, Landroid/media/-$$Lambda$MediaScannerConnection$X7K_c7l7bfQR6Mg9eCJVPmLMn6I;->f$2:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/media/-$$Lambda$MediaScannerConnection$X7K_c7l7bfQR6Mg9eCJVPmLMn6I;->f$0:Landroid/content/Context;

    iget-object v1, p0, Landroid/media/-$$Lambda$MediaScannerConnection$X7K_c7l7bfQR6Mg9eCJVPmLMn6I;->f$1:[Ljava/lang/String;

    iget-object v2, p0, Landroid/media/-$$Lambda$MediaScannerConnection$X7K_c7l7bfQR6Mg9eCJVPmLMn6I;->f$2:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    invoke-static {v0, v1, v2}, Landroid/media/MediaScannerConnection;->lambda$scanFile$1(Landroid/content/Context;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    return-void
.end method
