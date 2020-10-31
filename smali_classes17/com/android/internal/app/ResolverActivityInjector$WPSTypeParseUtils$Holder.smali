.class Lcom/android/internal/app/ResolverActivityInjector$WPSTypeParseUtils$Holder;
.super Ljava/lang/Object;
.source "ResolverActivityInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivityInjector$WPSTypeParseUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static INSTANCE:Lcom/android/internal/app/ResolverActivityInjector$WPSTypeParseUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/internal/app/ResolverActivityInjector$WPSTypeParseUtils;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverActivityInjector$WPSTypeParseUtils;-><init>(Lcom/android/internal/app/ResolverActivityInjector$1;)V

    sput-object v0, Lcom/android/internal/app/ResolverActivityInjector$WPSTypeParseUtils$Holder;->INSTANCE:Lcom/android/internal/app/ResolverActivityInjector$WPSTypeParseUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$900()Lcom/android/internal/app/ResolverActivityInjector$WPSTypeParseUtils;
    .registers 1

    sget-object v0, Lcom/android/internal/app/ResolverActivityInjector$WPSTypeParseUtils$Holder;->INSTANCE:Lcom/android/internal/app/ResolverActivityInjector$WPSTypeParseUtils;

    return-object v0
.end method
