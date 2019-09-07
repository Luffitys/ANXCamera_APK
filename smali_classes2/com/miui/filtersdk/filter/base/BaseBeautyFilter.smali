.class public abstract Lcom/miui/filtersdk/filter/base/BaseBeautyFilter;
.super Lcom/miui/filtersdk/filter/base/GPUImageFilter;
.source "BaseBeautyFilter.java"


# instance fields
.field protected mBeautyProcessor:Lcom/miui/filtersdk/beauty/BeautyProcessor;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public beautyEnable()Z
    .locals 0

    iget-object p0, p0, Lcom/miui/filtersdk/filter/base/BaseBeautyFilter;->mBeautyProcessor:Lcom/miui/filtersdk/beauty/BeautyProcessor;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract initBeautyProcessor(II)V
.end method

.method public setBeautyProcessor(Lcom/miui/filtersdk/beauty/BeautyProcessor;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/filtersdk/filter/base/BaseBeautyFilter;->mBeautyProcessor:Lcom/miui/filtersdk/beauty/BeautyProcessor;

    return-void
.end method
