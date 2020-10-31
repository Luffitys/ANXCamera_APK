.class final Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;
.super Ljava/lang/Object;
.source "ProcessStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/procstats/ProcessStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AssociationDumpContainer"
.end annotation


# instance fields
.field mActiveTime:J

.field mSources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Lcom/android/internal/app/procstats/AssociationState$SourceKey;",
            "Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;",
            ">;>;"
        }
    .end annotation
.end field

.field final mState:Lcom/android/internal/app/procstats/AssociationState;

.field mTotalTime:J

.field final synthetic this$0:Lcom/android/internal/app/procstats/ProcessStats;


# direct methods
.method constructor <init>(Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/AssociationState;)V
    .registers 3

    iput-object p1, p0, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;->this$0:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/internal/app/procstats/ProcessStats$AssociationDumpContainer;->mState:Lcom/android/internal/app/procstats/AssociationState;

    return-void
.end method
