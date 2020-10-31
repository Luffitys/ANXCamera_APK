.class public Landroid/app/admin/FactoryResetProtectionPolicy$Builder;
.super Ljava/lang/Object;
.source "FactoryResetProtectionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/FactoryResetProtectionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mFactoryResetProtectionAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFactoryResetProtectionEnabled:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/admin/FactoryResetProtectionPolicy$Builder;->mFactoryResetProtectionEnabled:Z

    return-void
.end method


# virtual methods
.method public build()Landroid/app/admin/FactoryResetProtectionPolicy;
    .registers 5

    new-instance v0, Landroid/app/admin/FactoryResetProtectionPolicy;

    iget-object v1, p0, Landroid/app/admin/FactoryResetProtectionPolicy$Builder;->mFactoryResetProtectionAccounts:Ljava/util/List;

    iget-boolean v2, p0, Landroid/app/admin/FactoryResetProtectionPolicy$Builder;->mFactoryResetProtectionEnabled:Z

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/app/admin/FactoryResetProtectionPolicy;-><init>(Ljava/util/List;ZLandroid/app/admin/FactoryResetProtectionPolicy$1;)V

    return-object v0
.end method

.method public setFactoryResetProtectionAccounts(Ljava/util/List;)Landroid/app/admin/FactoryResetProtectionPolicy$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/admin/FactoryResetProtectionPolicy$Builder;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/app/admin/FactoryResetProtectionPolicy$Builder;->mFactoryResetProtectionAccounts:Ljava/util/List;

    return-object p0
.end method

.method public setFactoryResetProtectionEnabled(Z)Landroid/app/admin/FactoryResetProtectionPolicy$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/app/admin/FactoryResetProtectionPolicy$Builder;->mFactoryResetProtectionEnabled:Z

    return-object p0
.end method
