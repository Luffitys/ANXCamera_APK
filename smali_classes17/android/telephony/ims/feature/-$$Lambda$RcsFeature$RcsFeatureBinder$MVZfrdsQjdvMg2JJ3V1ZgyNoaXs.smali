.class public final synthetic Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$MVZfrdsQjdvMg2JJ3V1ZgyNoaXs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/telephony/ims/aidl/IImsCapabilityCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$MVZfrdsQjdvMg2JJ3V1ZgyNoaXs;->f$0:Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;

    iput p2, p0, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$MVZfrdsQjdvMg2JJ3V1ZgyNoaXs;->f$1:I

    iput p3, p0, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$MVZfrdsQjdvMg2JJ3V1ZgyNoaXs;->f$2:I

    iput-object p4, p0, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$MVZfrdsQjdvMg2JJ3V1ZgyNoaXs;->f$3:Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$MVZfrdsQjdvMg2JJ3V1ZgyNoaXs;->f$0:Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;

    iget v1, p0, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$MVZfrdsQjdvMg2JJ3V1ZgyNoaXs;->f$1:I

    iget v2, p0, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$MVZfrdsQjdvMg2JJ3V1ZgyNoaXs;->f$2:I

    iget-object v3, p0, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$MVZfrdsQjdvMg2JJ3V1ZgyNoaXs;->f$3:Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    invoke-virtual {v0, v1, v2, v3}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->lambda$queryCapabilityConfiguration$4$RcsFeature$RcsFeatureBinder(IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    return-void
.end method
