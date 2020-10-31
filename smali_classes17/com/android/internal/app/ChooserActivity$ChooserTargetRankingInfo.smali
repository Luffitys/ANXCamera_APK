.class Lcom/android/internal/app/ChooserActivity$ChooserTargetRankingInfo;
.super Ljava/lang/Object;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChooserTargetRankingInfo"
.end annotation


# instance fields
.field public final scores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;"
        }
    .end annotation
.end field

.field public final userHandle:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Ljava/util/List;Landroid/os/UserHandle;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetRankingInfo;->scores:Ljava/util/List;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetRankingInfo;->userHandle:Landroid/os/UserHandle;

    return-void
.end method
