.class Lcom/android/internal/app/ResolverActivityInjector$WPSTypeParseUtils;
.super Ljava/lang/Object;
.source "ResolverActivityInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivityInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WPSTypeParseUtils"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverActivityInjector$WPSTypeParseUtils$Holder;
    }
.end annotation


# static fields
.field public static final DOC_SUFFIX:[Ljava/lang/String;

.field private static final mDocTypes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const-string v0, "DOC"

    const-string v1, "DOCX"

    const-string v2, "XLS"

    const-string v3, "XLSX"

    const-string v4, "PPT"

    const-string v5, "PPTX"

    const-string v6, "PDF"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/ResolverActivityInjector$WPSTypeParseUtils;->DOC_SUFFIX:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/android/internal/app/ResolverActivityInjector$WPSTypeParseUtils;->DOC_SUFFIX:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/internal/app/ResolverActivityInjector$WPSTypeParseUtils;->mDocTypes:Ljava/util/HashSet;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/app/ResolverActivityInjector$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivityInjector$WPSTypeParseUtils;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/internal/app/ResolverActivityInjector$WPSTypeParseUtils;
    .registers 1

    # getter for: Lcom/android/internal/app/ResolverActivityInjector$WPSTypeParseUtils$Holder;->INSTANCE:Lcom/android/internal/app/ResolverActivityInjector$WPSTypeParseUtils;
    invoke-static {}, Lcom/android/internal/app/ResolverActivityInjector$WPSTypeParseUtils$Holder;->access$900()Lcom/android/internal/app/ResolverActivityInjector$WPSTypeParseUtils;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public isDocTypeResolved(Landroid/app/Activity;)Z
    .registers 11

    const-string v0, "."

    const/4 v1, 0x0

    if-nez p1, :cond_6

    return v1

    :cond_6
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_4e

    :try_start_c
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_13

    return v1

    :cond_13
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_49

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_49

    invoke-virtual {v5, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v6

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lcom/android/internal/app/ResolverActivityInjector$WPSTypeParseUtils;->mDocTypes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_46} :catch_4a

    if-eqz v7, :cond_49

    return v6

    :cond_49
    goto :goto_4e

    :catch_4a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4e
    :goto_4e
    return v1
.end method
