.class public Lcom/miui/filtersdk/beauty/BeautyProcessorManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/miui/filtersdk/beauty/BeautyProcessorManager;


# instance fields
.field private mBeautyProcessor:Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/filtersdk/beauty/BeautyProcessorManager;

    invoke-direct {v0}, Lcom/miui/filtersdk/beauty/BeautyProcessorManager;-><init>()V

    sput-object v0, Lcom/miui/filtersdk/beauty/BeautyProcessorManager;->INSTANCE:Lcom/miui/filtersdk/beauty/BeautyProcessorManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBeautyProcessor()Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;
    .locals 0

    new-instance p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;

    invoke-direct {p0}, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;-><init>()V

    return-object p0
.end method

.method public needPreviewCallback()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
