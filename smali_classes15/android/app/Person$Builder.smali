.class public Landroid/app/Person$Builder;
.super Ljava/lang/Object;
.source "Person.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Person;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mIcon:Landroid/graphics/drawable/Icon;

.field private mIsBot:Z

.field private mIsImportant:Z

.field private mKey:Ljava/lang/String;

.field private mName:Ljava/lang/CharSequence;

.field private mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/app/Person;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    # getter for: Landroid/app/Person;->mName:Ljava/lang/CharSequence;
    invoke-static {p1}, Landroid/app/Person;->access$700(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Person$Builder;->mName:Ljava/lang/CharSequence;

    # getter for: Landroid/app/Person;->mIcon:Landroid/graphics/drawable/Icon;
    invoke-static {p1}, Landroid/app/Person;->access$800(Landroid/app/Person;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Person$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    # getter for: Landroid/app/Person;->mUri:Ljava/lang/String;
    invoke-static {p1}, Landroid/app/Person;->access$900(Landroid/app/Person;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Person$Builder;->mUri:Ljava/lang/String;

    # getter for: Landroid/app/Person;->mKey:Ljava/lang/String;
    invoke-static {p1}, Landroid/app/Person;->access$1000(Landroid/app/Person;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Person$Builder;->mKey:Ljava/lang/String;

    # getter for: Landroid/app/Person;->mIsBot:Z
    invoke-static {p1}, Landroid/app/Person;->access$1100(Landroid/app/Person;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Person$Builder;->mIsBot:Z

    # getter for: Landroid/app/Person;->mIsImportant:Z
    invoke-static {p1}, Landroid/app/Person;->access$1200(Landroid/app/Person;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Person$Builder;->mIsImportant:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Person;Landroid/app/Person$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/Person$Builder;-><init>(Landroid/app/Person;)V

    return-void
.end method

.method static synthetic access$000(Landroid/app/Person$Builder;)Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/app/Person$Builder;->mName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$100(Landroid/app/Person$Builder;)Landroid/graphics/drawable/Icon;
    .registers 2

    iget-object v0, p0, Landroid/app/Person$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method static synthetic access$200(Landroid/app/Person$Builder;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/Person$Builder;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroid/app/Person$Builder;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/Person$Builder;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Landroid/app/Person$Builder;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/app/Person$Builder;->mIsBot:Z

    return v0
.end method

.method static synthetic access$500(Landroid/app/Person$Builder;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/app/Person$Builder;->mIsImportant:Z

    return v0
.end method


# virtual methods
.method public build()Landroid/app/Person;
    .registers 3

    new-instance v0, Landroid/app/Person;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/Person;-><init>(Landroid/app/Person$Builder;Landroid/app/Person$1;)V

    return-object v0
.end method

.method public setBot(Z)Landroid/app/Person$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/app/Person$Builder;->mIsBot:Z

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Person$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/Person$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method public setImportant(Z)Landroid/app/Person$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/app/Person$Builder;->mIsImportant:Z

    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Landroid/app/Person$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/Person$Builder;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/Person$Builder;->mName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setUri(Ljava/lang/String;)Landroid/app/Person$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/Person$Builder;->mUri:Ljava/lang/String;

    return-object p0
.end method
