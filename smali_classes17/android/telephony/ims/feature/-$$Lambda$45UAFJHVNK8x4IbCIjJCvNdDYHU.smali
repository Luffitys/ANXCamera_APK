.class public final synthetic Landroid/telephony/ims/feature/-$$Lambda$45UAFJHVNK8x4IbCIjJCvNdDYHU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/telephony/ims/feature/RcsFeature;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/feature/RcsFeature;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/feature/-$$Lambda$45UAFJHVNK8x4IbCIjJCvNdDYHU;->f$0:Landroid/telephony/ims/feature/RcsFeature;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/feature/-$$Lambda$45UAFJHVNK8x4IbCIjJCvNdDYHU;->f$0:Landroid/telephony/ims/feature/RcsFeature;

    invoke-virtual {v0}, Landroid/telephony/ims/feature/ImsFeature;->getFeatureState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
