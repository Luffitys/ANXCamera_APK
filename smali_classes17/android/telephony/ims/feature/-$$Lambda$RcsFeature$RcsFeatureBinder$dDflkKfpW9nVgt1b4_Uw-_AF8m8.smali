.class public final synthetic Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$dDflkKfpW9nVgt1b4_Uw-_AF8m8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;Ljava/util/List;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$dDflkKfpW9nVgt1b4_Uw-_AF8m8;->f$0:Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;

    iput-object p2, p0, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$dDflkKfpW9nVgt1b4_Uw-_AF8m8;->f$1:Ljava/util/List;

    iput p3, p0, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$dDflkKfpW9nVgt1b4_Uw-_AF8m8;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$dDflkKfpW9nVgt1b4_Uw-_AF8m8;->f$0:Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;

    iget-object v1, p0, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$dDflkKfpW9nVgt1b4_Uw-_AF8m8;->f$1:Ljava/util/List;

    iget v2, p0, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$dDflkKfpW9nVgt1b4_Uw-_AF8m8;->f$2:I

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->lambda$requestCapabilities$5$RcsFeature$RcsFeatureBinder(Ljava/util/List;I)V

    return-void
.end method
