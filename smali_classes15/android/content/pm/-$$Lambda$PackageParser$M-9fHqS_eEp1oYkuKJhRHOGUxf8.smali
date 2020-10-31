.class public final synthetic Landroid/content/pm/-$$Lambda$PackageParser$M-9fHqS_eEp1oYkuKJhRHOGUxf8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Landroid/content/pm/-$$Lambda$PackageParser$M-9fHqS_eEp1oYkuKJhRHOGUxf8;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/content/pm/-$$Lambda$PackageParser$M-9fHqS_eEp1oYkuKJhRHOGUxf8;

    invoke-direct {v0}, Landroid/content/pm/-$$Lambda$PackageParser$M-9fHqS_eEp1oYkuKJhRHOGUxf8;-><init>()V

    sput-object v0, Landroid/content/pm/-$$Lambda$PackageParser$M-9fHqS_eEp1oYkuKJhRHOGUxf8;->INSTANCE:Landroid/content/pm/-$$Lambda$PackageParser$M-9fHqS_eEp1oYkuKJhRHOGUxf8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Landroid/content/pm/PackageParser$Service;

    check-cast p2, Landroid/content/pm/PackageParser$Service;

    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->lambda$parseBaseApplication$2(Landroid/content/pm/PackageParser$Service;Landroid/content/pm/PackageParser$Service;)I

    move-result p1

    return p1
.end method
