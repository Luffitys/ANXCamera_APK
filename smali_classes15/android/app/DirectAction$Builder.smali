.class public final Landroid/app/DirectAction$Builder;
.super Ljava/lang/Object;
.source "DirectAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/DirectAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mExtras:Landroid/os/Bundle;

.field private mId:Ljava/lang/String;

.field private mLocusId:Landroid/content/LocusId;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/app/DirectAction$Builder;->mId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Landroid/app/DirectAction;
    .registers 5

    new-instance v0, Landroid/app/DirectAction;

    iget-object v1, p0, Landroid/app/DirectAction$Builder;->mId:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/DirectAction$Builder;->mExtras:Landroid/os/Bundle;

    iget-object v3, p0, Landroid/app/DirectAction$Builder;->mLocusId:Landroid/content/LocusId;

    invoke-direct {v0, v1, v2, v3}, Landroid/app/DirectAction;-><init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/content/LocusId;)V

    return-object v0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/app/DirectAction$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/DirectAction$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public setLocusId(Landroid/content/LocusId;)Landroid/app/DirectAction$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/DirectAction$Builder;->mLocusId:Landroid/content/LocusId;

    return-object p0
.end method
