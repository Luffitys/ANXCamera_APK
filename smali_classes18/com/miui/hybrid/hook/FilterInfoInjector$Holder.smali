.class Lcom/miui/hybrid/hook/FilterInfoInjector$Holder;
.super Ljava/lang/Object;
.source "FilterInfoInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/hybrid/hook/FilterInfoInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field static final INSTANCE:Lcom/miui/hybrid/hook/FilterInfoInjector;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/miui/hybrid/hook/FilterInfoInjector;

    invoke-direct {v0}, Lcom/miui/hybrid/hook/FilterInfoInjector;-><init>()V

    sput-object v0, Lcom/miui/hybrid/hook/FilterInfoInjector$Holder;->INSTANCE:Lcom/miui/hybrid/hook/FilterInfoInjector;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
