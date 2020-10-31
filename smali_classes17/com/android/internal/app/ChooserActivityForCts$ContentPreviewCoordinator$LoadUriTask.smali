.class Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator$LoadUriTask;
.super Ljava/lang/Object;
.source "ChooserActivityForCts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadUriTask"
.end annotation


# instance fields
.field public final mBmp:Landroid/graphics/Bitmap;

.field public final mExtraCount:I

.field public final mImageResourceId:I

.field public final mUri:Landroid/net/Uri;

.field final synthetic this$1:Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;ILandroid/net/Uri;ILandroid/graphics/Bitmap;)V
    .registers 6

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator$LoadUriTask;->this$1:Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator$LoadUriTask;->mImageResourceId:I

    iput-object p3, p0, Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator$LoadUriTask;->mUri:Landroid/net/Uri;

    iput p4, p0, Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator$LoadUriTask;->mExtraCount:I

    iput-object p5, p0, Lcom/android/internal/app/ChooserActivityForCts$ContentPreviewCoordinator$LoadUriTask;->mBmp:Landroid/graphics/Bitmap;

    return-void
.end method
