.class public final synthetic Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$uINaboXBbmj01kSBzEjvFkkEyrQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/telephony/ims/RcsContactUceCapability;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;Ljava/lang/String;Landroid/telephony/ims/RcsContactUceCapability;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$uINaboXBbmj01kSBzEjvFkkEyrQ;->f$0:Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;

    iput-object p2, p0, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$uINaboXBbmj01kSBzEjvFkkEyrQ;->f$1:Ljava/lang/String;

    iput-object p3, p0, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$uINaboXBbmj01kSBzEjvFkkEyrQ;->f$2:Landroid/telephony/ims/RcsContactUceCapability;

    iput p4, p0, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$uINaboXBbmj01kSBzEjvFkkEyrQ;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$uINaboXBbmj01kSBzEjvFkkEyrQ;->f$0:Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;

    iget-object v1, p0, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$uINaboXBbmj01kSBzEjvFkkEyrQ;->f$1:Ljava/lang/String;

    iget-object v2, p0, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$uINaboXBbmj01kSBzEjvFkkEyrQ;->f$2:Landroid/telephony/ims/RcsContactUceCapability;

    iget v3, p0, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$uINaboXBbmj01kSBzEjvFkkEyrQ;->f$3:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->lambda$respondToCapabilityRequest$8$RcsFeature$RcsFeatureBinder(Ljava/lang/String;Landroid/telephony/ims/RcsContactUceCapability;I)V

    return-void
.end method
