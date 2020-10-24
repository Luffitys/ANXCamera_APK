.class final Lcom/android/camera/module/FunModule$SaveVideoTask;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public contentValues:Landroid/content/ContentValues;

.field final synthetic this$0:Lcom/android/camera/module/FunModule;

.field public videoPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/FunModule;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/FunModule$SaveVideoTask;->this$0:Lcom/android/camera/module/FunModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/camera/module/FunModule$SaveVideoTask;->videoPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/camera/module/FunModule$SaveVideoTask;->contentValues:Landroid/content/ContentValues;

    return-void
.end method
