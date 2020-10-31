.class Lcom/android/internal/app/ChooserActivityForCts$ServiceResultInfo;
.super Ljava/lang/Object;
.source "ChooserActivityForCts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivityForCts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ServiceResultInfo"
.end annotation


# instance fields
.field public final connection:Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;

.field public final originalTarget:Lcom/android/internal/app/chooser/DisplayResolveInfo;

.field public final resultTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/chooser/ChooserTarget;",
            ">;"
        }
    .end annotation
.end field

.field public final userHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/chooser/DisplayResolveInfo;Ljava/util/List;Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;Landroid/os/UserHandle;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            "Ljava/util/List<",
            "Landroid/service/chooser/ChooserTarget;",
            ">;",
            "Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivityForCts$ServiceResultInfo;->originalTarget:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivityForCts$ServiceResultInfo;->resultTargets:Ljava/util/List;

    iput-object p3, p0, Lcom/android/internal/app/ChooserActivityForCts$ServiceResultInfo;->connection:Lcom/android/internal/app/ChooserActivityForCts$ChooserTargetServiceConnection;

    iput-object p4, p0, Lcom/android/internal/app/ChooserActivityForCts$ServiceResultInfo;->userHandle:Landroid/os/UserHandle;

    return-void
.end method
