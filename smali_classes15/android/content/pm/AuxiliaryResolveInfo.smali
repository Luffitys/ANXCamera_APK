.class public final Landroid/content/pm/AuxiliaryResolveInfo;
.super Ljava/lang/Object;
.source "AuxiliaryResolveInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;
    }
.end annotation


# instance fields
.field public final failureIntent:Landroid/content/Intent;

.field public final filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;",
            ">;"
        }
    .end annotation
.end field

.field public final hostDigestPrefixSecure:[I

.field public final installFailureActivity:Landroid/content/ComponentName;

.field public final needsPhaseTwo:Z

.field public final token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/AuxiliaryResolveInfo;->installFailureActivity:Landroid/content/ComponentName;

    iput-object p3, p0, Landroid/content/pm/AuxiliaryResolveInfo;->filters:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/AuxiliaryResolveInfo;->token:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/content/pm/AuxiliaryResolveInfo;->needsPhaseTwo:Z

    iput-object p2, p0, Landroid/content/pm/AuxiliaryResolveInfo;->failureIntent:Landroid/content/Intent;

    iput-object v0, p0, Landroid/content/pm/AuxiliaryResolveInfo;->hostDigestPrefixSecure:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;Ljava/lang/String;JLjava/lang/String;)V
    .registers 8

    new-instance v0, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    invoke-direct {v0, p2, p3, p4, p5}, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/content/pm/AuxiliaryResolveInfo;-><init>(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLandroid/content/Intent;Ljava/util/List;[I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;",
            ">;[I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/AuxiliaryResolveInfo;->token:Ljava/lang/String;

    iput-boolean p2, p0, Landroid/content/pm/AuxiliaryResolveInfo;->needsPhaseTwo:Z

    iput-object p3, p0, Landroid/content/pm/AuxiliaryResolveInfo;->failureIntent:Landroid/content/Intent;

    iput-object p4, p0, Landroid/content/pm/AuxiliaryResolveInfo;->filters:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/AuxiliaryResolveInfo;->installFailureActivity:Landroid/content/ComponentName;

    iput-object p5, p0, Landroid/content/pm/AuxiliaryResolveInfo;->hostDigestPrefixSecure:[I

    return-void
.end method
