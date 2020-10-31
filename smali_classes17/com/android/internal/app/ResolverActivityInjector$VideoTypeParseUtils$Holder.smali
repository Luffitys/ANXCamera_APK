.class Lcom/android/internal/app/ResolverActivityInjector$VideoTypeParseUtils$Holder;
.super Ljava/lang/Object;
.source "ResolverActivityInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivityInjector$VideoTypeParseUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static INSTANCE:Lcom/android/internal/app/ResolverActivityInjector$VideoTypeParseUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/internal/app/ResolverActivityInjector$VideoTypeParseUtils;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverActivityInjector$VideoTypeParseUtils;-><init>(Lcom/android/internal/app/ResolverActivityInjector$1;)V

    sput-object v0, Lcom/android/internal/app/ResolverActivityInjector$VideoTypeParseUtils$Holder;->INSTANCE:Lcom/android/internal/app/ResolverActivityInjector$VideoTypeParseUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$700()Lcom/android/internal/app/ResolverActivityInjector$VideoTypeParseUtils;
    .registers 1

    sget-object v0, Lcom/android/internal/app/ResolverActivityInjector$VideoTypeParseUtils$Holder;->INSTANCE:Lcom/android/internal/app/ResolverActivityInjector$VideoTypeParseUtils;

    return-object v0
.end method
