.class public Landroid/service/settings/suggestions/Suggestion$Builder;
.super Ljava/lang/Object;
.source "Suggestion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/settings/suggestions/Suggestion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mFlags:I

.field private mIcon:Landroid/graphics/drawable/Icon;

.field private final mId:Ljava/lang/String;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mSummary:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    iput-object p1, p0, Landroid/service/settings/suggestions/Suggestion$Builder;->mId:Ljava/lang/String;

    return-void

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Suggestion id cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Landroid/service/settings/suggestions/Suggestion$Builder;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/service/settings/suggestions/Suggestion$Builder;->mId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/service/settings/suggestions/Suggestion$Builder;)Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/service/settings/suggestions/Suggestion$Builder;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$200(Landroid/service/settings/suggestions/Suggestion$Builder;)Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/service/settings/suggestions/Suggestion$Builder;->mSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$300(Landroid/service/settings/suggestions/Suggestion$Builder;)Landroid/graphics/drawable/Icon;
    .registers 2

    iget-object v0, p0, Landroid/service/settings/suggestions/Suggestion$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method static synthetic access$400(Landroid/service/settings/suggestions/Suggestion$Builder;)I
    .registers 2

    iget v0, p0, Landroid/service/settings/suggestions/Suggestion$Builder;->mFlags:I

    return v0
.end method

.method static synthetic access$500(Landroid/service/settings/suggestions/Suggestion$Builder;)Landroid/app/PendingIntent;
    .registers 2

    iget-object v0, p0, Landroid/service/settings/suggestions/Suggestion$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method


# virtual methods
.method public build()Landroid/service/settings/suggestions/Suggestion;
    .registers 3

    new-instance v0, Landroid/service/settings/suggestions/Suggestion;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/settings/suggestions/Suggestion;-><init>(Landroid/service/settings/suggestions/Suggestion$Builder;Landroid/service/settings/suggestions/Suggestion$1;)V

    return-object v0
.end method

.method public setFlags(I)Landroid/service/settings/suggestions/Suggestion$Builder;
    .registers 2

    iput p1, p0, Landroid/service/settings/suggestions/Suggestion$Builder;->mFlags:I

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Icon;)Landroid/service/settings/suggestions/Suggestion$Builder;
    .registers 2

    iput-object p1, p0, Landroid/service/settings/suggestions/Suggestion$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method public setPendingIntent(Landroid/app/PendingIntent;)Landroid/service/settings/suggestions/Suggestion$Builder;
    .registers 2

    iput-object p1, p0, Landroid/service/settings/suggestions/Suggestion$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setSummary(Ljava/lang/CharSequence;)Landroid/service/settings/suggestions/Suggestion$Builder;
    .registers 2

    iput-object p1, p0, Landroid/service/settings/suggestions/Suggestion$Builder;->mSummary:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/service/settings/suggestions/Suggestion$Builder;
    .registers 2

    iput-object p1, p0, Landroid/service/settings/suggestions/Suggestion$Builder;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method
