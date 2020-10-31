.class public final synthetic Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$KBfbIAfuyQhgeV5OXetqYAOMpDE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;

.field public final synthetic f$1:Landroid/net/Uri;

.field public final synthetic f$2:Landroid/telephony/ims/RcsContactUceCapability;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;Landroid/net/Uri;Landroid/telephony/ims/RcsContactUceCapability;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$KBfbIAfuyQhgeV5OXetqYAOMpDE;->f$0:Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;

    iput-object p2, p0, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$KBfbIAfuyQhgeV5OXetqYAOMpDE;->f$1:Landroid/net/Uri;

    iput-object p3, p0, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$KBfbIAfuyQhgeV5OXetqYAOMpDE;->f$2:Landroid/telephony/ims/RcsContactUceCapability;

    iput p4, p0, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$KBfbIAfuyQhgeV5OXetqYAOMpDE;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$KBfbIAfuyQhgeV5OXetqYAOMpDE;->f$0:Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;

    iget-object v1, p0, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$KBfbIAfuyQhgeV5OXetqYAOMpDE;->f$1:Landroid/net/Uri;

    iget-object v2, p0, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$KBfbIAfuyQhgeV5OXetqYAOMpDE;->f$2:Landroid/telephony/ims/RcsContactUceCapability;

    iget v3, p0, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$KBfbIAfuyQhgeV5OXetqYAOMpDE;->f$3:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->lambda$sendCapabilityRequest$7$RcsFeature$RcsFeatureBinder(Landroid/net/Uri;Landroid/telephony/ims/RcsContactUceCapability;I)V

    return-void
.end method
