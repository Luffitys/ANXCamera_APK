.class public final Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter$Builder;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final mParameter:Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;-><init>(Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter$1;)V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter$Builder;->mParameter:Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;

    return-void
.end method


# virtual methods
.method public build()Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter$Builder;->mParameter:Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;

    return-object p0
.end method

.method public setActiveCameraId(I)Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter$Builder;->mParameter:Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;->access$402(Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;I)I

    return-object p0
.end method

.method public setExposureTime(J)Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter$Builder;->mParameter:Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;

    invoke-static {v0, p1, p2}, Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;->access$302(Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;J)J

    return-object p0
.end method

.method public setFeatureType(I)Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter$Builder;->mParameter:Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;->access$102(Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;I)I

    return-object p0
.end method

.method public setISO(I)Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter$Builder;->mParameter:Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;->access$202(Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;I)I

    return-object p0
.end method
