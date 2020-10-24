.class final Lcom/android/camera/module/AmbilightModule$SaveVideoTask;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public contentValues:Landroid/content/ContentValues;

.field public videoPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/AmbilightModule$SaveVideoTask;->videoPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/camera/module/AmbilightModule$SaveVideoTask;->contentValues:Landroid/content/ContentValues;

    return-void
.end method
