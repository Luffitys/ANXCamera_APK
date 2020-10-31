.class public Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;
.super Ljava/lang/Object;
.source "ImsFeatureConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/stub/ImsFeatureConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mConfig:Landroid/telephony/ims/stub/ImsFeatureConfiguration;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/telephony/ims/stub/ImsFeatureConfiguration;

    invoke-direct {v0}, Landroid/telephony/ims/stub/ImsFeatureConfiguration;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;->mConfig:Landroid/telephony/ims/stub/ImsFeatureConfiguration;

    return-void
.end method


# virtual methods
.method public addFeature(II)Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;
    .registers 4

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;->mConfig:Landroid/telephony/ims/stub/ImsFeatureConfiguration;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/stub/ImsFeatureConfiguration;->addFeature(II)V

    return-object p0
.end method

.method public build()Landroid/telephony/ims/stub/ImsFeatureConfiguration;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;->mConfig:Landroid/telephony/ims/stub/ImsFeatureConfiguration;

    return-object v0
.end method
