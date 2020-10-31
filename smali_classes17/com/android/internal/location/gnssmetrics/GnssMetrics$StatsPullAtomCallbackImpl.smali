.class Lcom/android/internal/location/gnssmetrics/GnssMetrics$StatsPullAtomCallbackImpl;
.super Ljava/lang/Object;
.source "GnssMetrics.java"

# interfaces
.implements Landroid/app/StatsManager$StatsPullAtomCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/location/gnssmetrics/GnssMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatsPullAtomCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/location/gnssmetrics/GnssMetrics;


# direct methods
.method private constructor <init>(Lcom/android/internal/location/gnssmetrics/GnssMetrics;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$StatsPullAtomCallbackImpl;->this$0:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/location/gnssmetrics/GnssMetrics;Lcom/android/internal/location/gnssmetrics/GnssMetrics$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$StatsPullAtomCallbackImpl;-><init>(Lcom/android/internal/location/gnssmetrics/GnssMetrics;)V

    return-void
.end method


# virtual methods
.method public onPullAtom(ILjava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    const/16 v0, 0x275a

    if-ne p1, v0, :cond_ce

    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$StatsPullAtomCallbackImpl;->this$0:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    # getter for: Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mLocationFailureReportsStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;
    invoke-static {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->access$1300(Lcom/android/internal/location/gnssmetrics/GnssMetrics;)Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$StatsPullAtomCallbackImpl;->this$0:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    # getter for: Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mLocationFailureReportsStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;
    invoke-static {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->access$1300(Lcom/android/internal/location/gnssmetrics/GnssMetrics;)Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getLongSum()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$StatsPullAtomCallbackImpl;->this$0:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    # getter for: Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mTimeToFirstFixMilliSReportsStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;
    invoke-static {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->access$1200(Lcom/android/internal/location/gnssmetrics/GnssMetrics;)Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$StatsPullAtomCallbackImpl;->this$0:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    # getter for: Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mTimeToFirstFixMilliSReportsStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;
    invoke-static {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->access$1200(Lcom/android/internal/location/gnssmetrics/GnssMetrics;)Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getLongSum()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$StatsPullAtomCallbackImpl;->this$0:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    # getter for: Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mPositionAccuracyMetersReportsStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;
    invoke-static {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->access$1100(Lcom/android/internal/location/gnssmetrics/GnssMetrics;)Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$StatsPullAtomCallbackImpl;->this$0:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    # getter for: Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mPositionAccuracyMetersReportsStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;
    invoke-static {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->access$1100(Lcom/android/internal/location/gnssmetrics/GnssMetrics;)Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getLongSum()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$StatsPullAtomCallbackImpl;->this$0:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    # getter for: Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mTopFourAverageCn0DbmHzReportsStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;
    invoke-static {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->access$1000(Lcom/android/internal/location/gnssmetrics/GnssMetrics;)Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$StatsPullAtomCallbackImpl;->this$0:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    # getter for: Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mTopFourAverageCn0DbmHzReportsStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;
    invoke-static {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->access$1000(Lcom/android/internal/location/gnssmetrics/GnssMetrics;)Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getLongSum()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$StatsPullAtomCallbackImpl;->this$0:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    # getter for: Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mL5TopFourAverageCn0DbmHzReportsStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;
    invoke-static {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->access$900(Lcom/android/internal/location/gnssmetrics/GnssMetrics;)Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$StatsPullAtomCallbackImpl;->this$0:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    # getter for: Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mL5TopFourAverageCn0DbmHzReportsStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;
    invoke-static {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->access$900(Lcom/android/internal/location/gnssmetrics/GnssMetrics;)Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getLongSum()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$StatsPullAtomCallbackImpl;->this$0:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    # getter for: Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mSvStatusReports:J
    invoke-static {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->access$800(Lcom/android/internal/location/gnssmetrics/GnssMetrics;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$StatsPullAtomCallbackImpl;->this$0:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    # getter for: Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mSvStatusReportsUsedInFix:J
    invoke-static {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->access$700(Lcom/android/internal/location/gnssmetrics/GnssMetrics;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$StatsPullAtomCallbackImpl;->this$0:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    # getter for: Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mL5SvStatusReports:J
    invoke-static {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->access$600(Lcom/android/internal/location/gnssmetrics/GnssMetrics;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$StatsPullAtomCallbackImpl;->this$0:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    # getter for: Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mL5SvStatusReportsUsedInFix:J
    invoke-static {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->access$500(Lcom/android/internal/location/gnssmetrics/GnssMetrics;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    return v1

    :cond_ce
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown tagId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
