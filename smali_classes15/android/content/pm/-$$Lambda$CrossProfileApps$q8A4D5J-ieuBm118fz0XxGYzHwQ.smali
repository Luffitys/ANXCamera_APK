.class public final synthetic Landroid/content/pm/-$$Lambda$CrossProfileApps$q8A4D5J-ieuBm118fz0XxGYzHwQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/-$$Lambda$CrossProfileApps$q8A4D5J-ieuBm118fz0XxGYzHwQ;->f$0:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Landroid/content/pm/-$$Lambda$CrossProfileApps$q8A4D5J-ieuBm118fz0XxGYzHwQ;->f$0:Ljava/util/Set;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/content/pm/CrossProfileApps;->lambda$resetInteractAcrossProfilesAppOps$0(Ljava/util/Set;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
