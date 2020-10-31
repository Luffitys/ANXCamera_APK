.class public final synthetic Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$xfOc6cnT5pzpCqMa06Osbyq4DSg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;

.field public final synthetic f$1:Landroid/telephony/ims/aidl/IImsCapabilityCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$xfOc6cnT5pzpCqMa06Osbyq4DSg;->f$0:Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;

    iput-object p2, p0, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$xfOc6cnT5pzpCqMa06Osbyq4DSg;->f$1:Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$xfOc6cnT5pzpCqMa06Osbyq4DSg;->f$0:Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;

    iget-object v1, p0, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$xfOc6cnT5pzpCqMa06Osbyq4DSg;->f$1:Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->lambda$removeCapabilityCallback$2$RcsFeature$RcsFeatureBinder(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    return-void
.end method
