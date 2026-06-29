<!-- create a new manven project -->

```sh
mvn -B archetype:generate \
 -DarchetypeGroupId=software.amazon.awssdk \
 -DarchetypeArtifactId=archetype-lambda -Dservice=s3 -Dregion=EU-NORTH-1 \
 -DarchetypeVersion=2.46.17 \
 -DgroupId=com.example.myapp \
 -DartifactId=myapp
```
